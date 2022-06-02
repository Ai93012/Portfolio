package com.fit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fit.model.BoardAttachVO;
import com.fit.model.Criteria;
import com.fit.model.EventVO;
import com.fit.model.PageDTO;
import com.fit.model.UploadForm2;
import com.fit.service.EventService;
import com.fit.utils.Common;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/event/*")
@Log4j
@AllArgsConstructor
public class EventController {
	private EventService service;

	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list: " +cri);
		List<EventVO> list = service.getList(cri);
		model.addAttribute("list", list);
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("pageMaker",new PageDTO(cri, total));
	}
	
	@GetMapping("/register")
	public void register() {
	}

	@PostMapping("/register")
	public String registerAction(UploadForm2 form, Model model) {
		log.info("upload ajax post.....");

		BoardAttachVO banner = new BoardAttachVO();

		String uploadFolder = Common.UPLOAD_PATH;
		String uploadFolderPath = getFolder();

		// 업로드 폴더 생성
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		log.info("upload path: " + uploadPath);
		if (uploadPath.exists() == false) { // 폴더가 존재하지 않을 때만 생성
			uploadPath.mkdirs(); // 중간 경로에 없는 폴더가 있을 경우, 그것까지도 생성해 준다.
		} // make yyyy/MM/dd folder

		MultipartFile multipartFile = form.getUploadFile();
		log.info("------------------------------");
		log.info("upload file name: " + multipartFile.getOriginalFilename());
		log.info("upload File Size: " + multipartFile.getSize());

		String uploadFileName = multipartFile.getOriginalFilename();
		// IE has file path -> 경로 자르기 (전체 경로 중에 파일 이름만 잘라낸다.)
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
		log.info("only file name: " + uploadFileName);

		banner.setFileName(uploadFileName);

		// 파일이름 중복 방지
		// 원래 파일 이름도 보존할 수 있다.
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		try {
			File saveFile = new File(uploadPath, uploadFileName);
			multipartFile.transferTo(saveFile);

			banner.setUuid(uuid.toString());
			banner.setUploadPath(uploadFolderPath);
			// 이미지 파일 유형인지 검사
			if (checkImageType(saveFile)) {
				banner.setFileType(true);
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
				Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
				thumbnail.close();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		EventVO event = new EventVO();
		event.setAid(form.getAid());
		event.setTitle(form.getTitle());
		event.setContent(form.getContent());
		List<BoardAttachVO> list = new ArrayList<BoardAttachVO>();
		list.add(banner);
		event.setBannerList(list);
		service.register(event);
		return "redirect:/event/list";
	}
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator); // File.separator : OS에 따라 다르므로 이렇게 사용
	}
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			if (contentType != null) // modified by ksseo
				return contentType.startsWith("image"); // image/jpg, image/png, image/gif
			else
				return false;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("get..." + bno);
		EventVO event = service.get(bno);
		model.addAttribute("event", event);
	}
}
package com.fit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fit.model.AttachFileDTO;
import com.fit.model.UploadForm;
import com.fit.utils.Common;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {
	// Upload 폼을 요청하는 url 처리
	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("upload form");
	} // 반환형이 void일 때는 view page 이름이 url과 동일 (/uploadForm.jsp")

	@PostMapping("/uploadFormAction")
	public void uploadFormAction(UploadForm form, Model model) {
//		log.info("desc= " + form.getDesc());
//		String uploadFolder = Common.UPLOAD_PATH; // 절대 경로를 사용(여러분의 경로를 사용)
//		// 상대 경로를 사용하는 경우는 jsp 파일 업로드시 한적이 있으므로 그것을 참조
//		for (MultipartFile multipartFile : form.getUploadFile()) {
//			log.info("-----------------------------------");
//			log.info("Upload file name: " + multipartFile.getOriginalFilename());
//			log.info("upload file size: " + multipartFile.getSize());
//			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
//			try {
//				multipartFile.transferTo(saveFile); // 파일을 저장
//			} catch (Exception e) {
//				log.error(e.getMessage());
//			}
//		}
	}

	// Upload 폼을 요청하는 url 처리
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("upload Ajax form");
	} // 반환형이 void일 때는 view page 이름이 url과 동일 (/uploadAjax.jsp")

	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator); // File.separator : OS에 따라 다르므로 이렇게 사용
	} // Linux : /, Windows OS : \ -> OS 별로 차이가 있음

	// 인증한 사용자만이 첨부 파일을 추가할 수 있다.
//	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody // json 형식으로 응답을 하겠다
	public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		log.info("upload ajax post.....");
		List<AttachFileDTO> list = new ArrayList<AttachFileDTO>();

		String uploadFolder = Common.UPLOAD_PATH;
		String uploadFolderPath = getFolder();

		// 업로드 폴더 생성
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		log.info("upload path: " + uploadPath);
		if (uploadPath.exists() == false) { // 폴더가 존재하지 않을 때만 생성
			uploadPath.mkdirs(); // 중간 경로에 없는 폴더가 있을 경우, 그것까지도 생성해 준다.
		} // make yyyy/MM/dd folder

		for (MultipartFile multipartFile : uploadFile) {
			AttachFileDTO attachDTO = new AttachFileDTO();
			log.info("------------------------------");
			log.info("upload file name: " + multipartFile.getOriginalFilename());
			log.info("upload File Size: " + multipartFile.getSize());

			String uploadFileName = multipartFile.getOriginalFilename();
			// IE has file path -> 경로 자르기 (전체 경로 중에 파일 이름만 잘라낸다.)
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name: " + uploadFileName);

			attachDTO.setFileName(uploadFileName);

			// 파일이름 중복 방지
			// 원래 파일 이름도 보존할 수 있다.
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;

//			File saveFile = new File(uploadFolder, uploadFileName);

			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);

				attachDTO.setUuid(uuid.toString());
				attachDTO.setUploadPath(uploadFolderPath);
				// 이미지 파일 유형인지 검사
				if (checkImageType(saveFile)) {
					attachDTO.setImage(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}
				list.add(attachDTO);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		return new ResponseEntity<List<AttachFileDTO>>(list, HttpStatus.OK);
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

	// 서버에 저장된 파일을 가리키는 지칭하는 것
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) { // yyyy/MM/dd/uuid_filename
		log.info("fileName: " + fileName); // fileName : 보여줄 파일의 경로 이름
		File file = new File(Common.UPLOAD_PATH + File.separator + fileName);
		log.info("file: " + file);
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			// FileCopyUtils.copyToByteArray : 파일을 읽어서 바이트 배열로 만든다.
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	// 서버에 있는 파일을 다운로딩
	// url : /download
	// Content-Type : octet stream type (바이트 형태로 전송)
	@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {
		log.info("download file: " + fileName);
		Resource resource = new FileSystemResource(Common.UPLOAD_PATH + File.separator + fileName);
		if (resource.exists() == false) { // 다운로드 요청한 파일이 없을 경우
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		log.info("resource: " + resource);
		String resourceName = resource.getFilename(); // uuid + "_" + 원래 파일 이름;
		// 첨부파일의 이름을 원래 파일 이름 만으로 다시 만든다. -> uuid와 "_"를 제거
		// remove UUID
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);

		HttpHeaders headers = new HttpHeaders();
		try {
			// IE, EDGE, Chrome 브라우저 별로 다르게 처리를 해주어야 한다.
			String downloadName = null;
			if (userAgent.contains("Trident")) {
				log.info("IE browser");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8").replaceAll("\\+", " ");
			} else if (userAgent.contains("Edg")) { // Edge -> Edg
				log.info("Edge browser");
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8");
				log.info("Edge name: " + downloadName);
			} else {
				log.info("Chrome browser"); // 인코딩
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}
			log.info("downloadName: " + downloadName);
			headers.add("Content-Disposition", "attachment; filename=" + downloadName);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}

	// 로그인한 사용자만 파일을 삭제할 수 있도록 한다.
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {
		log.info("deleteFile: " + fileName);
		File file;
		try {
			// 원본 파일 삭제
			file = new File(Common.UPLOAD_PATH + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			if (type.equals("image")) {	// 섬네일 삭제
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				log.info("largeFileName: " + largeFileName);
				file = new File(largeFileName);
				file.delete();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

}

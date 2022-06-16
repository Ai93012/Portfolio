package com.fit.service;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.fit.mapper.BoardAttachMapper;
import com.fit.mapper.ProductMapper;
import com.fit.model.BoardAttachVO;
import com.fit.model.Criteria;
import com.fit.model.ProductVO;
import com.fit.model.UploadForm;
import com.fit.utils.Common;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Service
@Log4j
public class ProductServiceImpl implements ProductService {
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Setter(onMethod_= @Autowired)
	private BoardAttachMapper attachMapper;
	
	private File uploadPath;
	private String uploadFolderPath;
	@Override
	public List<ProductVO> getList(Criteria cri) {
		List<ProductVO> list = mapper.getList(cri);
		for(ProductVO product : list) {
			List<BoardAttachVO> attachList = attachMapper.findByBno("product", product.getNum());
			product.setAttachList(attachList);
		}
		return list;
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);	
	}

	@Override
	public List<BoardAttachVO> getAttachList(Long pid) {
		return attachMapper.findByBno("product", pid);
	}

	@Transactional
	@Override
	public void register(UploadForm form) {
		//상품정보를 데이터베이스 테이블에 저장
		ProductVO product = form.toProduct();
		mapper.insertSelectKey(product);
		form.setNum(product.getNum());
		storeImageFiles(form);
	}
	
	private void storeImageFiles(UploadForm form) {
		String uploadFolder = Common.UPLOAD_PATH;
		uploadFolderPath = Common.getFolder();
		uploadPath = new File(uploadFolder, uploadFolderPath);
		log.info("upload path: " + uploadPath);
		if (uploadPath.exists() == false) { // 폴더가 존재하지 않을 때만 생성
			uploadPath.mkdirs(); // 중간 경로에 없는 폴더가 있을 경우, 그것까지도 생성해 준다.
		}
		MultipartFile pImage1 = form.getImage1();
		if(pImage1.getSize()>0) {
			BoardAttachVO attach =storeImageFileAndTable(pImage1);
			attach.setKind("product");
			attach.setBno(form.getNum());
			attach.setFileType(true);
			attachMapper.insert(attach);
		}
		MultipartFile pImage2 = form.getImage2();
		if(pImage2.getSize()>0) {
			BoardAttachVO attach =storeImageFileAndTable(pImage2);
			attach.setKind("product");
			attach.setBno(form.getNum());
			attach.setFileType(true);
			attachMapper.insert(attach);
		}
		//이미지파일을 저장
		//이미지파일 정보를 데이터베이스 테이블에 저장
	}
	
	private BoardAttachVO storeImageFileAndTable(MultipartFile multipartFile) {
		BoardAttachVO attach = new BoardAttachVO();
		log.info("------------------------------");
		log.info("upload file name: " + multipartFile.getOriginalFilename());
		log.info("upload File Size: " + multipartFile.getSize());
		
		String uploadFileName = multipartFile.getOriginalFilename();
		// IE has file path -> 경로 자르기 (전체 경로 중에 파일 이름만 잘라낸다.)
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
		log.info("only file name: " + uploadFileName);
		
		attach.setFileName(uploadFileName);
		// 파일이름 중복 방지
		// 원래 파일 이름도 보존할 수 있다.
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		try {
			File saveFile = new File(uploadPath, uploadFileName);
			multipartFile.transferTo(saveFile);
			attach.setUuid(uuid.toString());
			attach.setUploadPath(uploadFolderPath);
			// 이미지 파일 유형인지 검사
			if (Common.checkImageType(saveFile)) {
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
				Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
				thumbnail.close();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return attach;
	}

	@Override
	public ProductVO read(Long num) {
		ProductVO product = mapper.read(num);
		List<BoardAttachVO> attachList = attachMapper.findByBno("product", num);
		product.setAttachList(attachList);
		return product;
	}
}

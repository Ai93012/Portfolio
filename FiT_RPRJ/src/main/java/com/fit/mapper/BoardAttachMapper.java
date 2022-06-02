package com.fit.mapper;

import java.util.List;

import com.fit.model.BoardAttachVO;

public interface BoardAttachMapper {
	public void insert(BoardAttachVO vo);
	public int delete(String uuid);
	public List<BoardAttachVO> findByBno(Long eBno);
	public void deleteAll(Long eBno);   //해당 게시글의 첨부파일 정보를 삭제
	public List<BoardAttachVO> getOldFiles();  //어제 날짜에
	// 파일에서는 update = delete -> insert
}

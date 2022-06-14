package com.fit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fit.model.BoardAttachVO;

public interface BoardAttachMapper {
	public void insert(BoardAttachVO vo);
	public int delete(String uuid);
	public List<BoardAttachVO> findByBno(@Param("kind") String kind, @Param("bno") Long bno);
	public void deleteAll(Long eBno);   //해당 게시글의 첨부파일 정보를 삭제
	public List<BoardAttachVO> getOldFiles();  //어제 날짜에
	// 파일에서는 update = delete -> insert
}

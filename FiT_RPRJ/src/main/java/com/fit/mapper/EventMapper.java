package com.fit.mapper;

import java.util.List;

import com.fit.model.EventVO;

public interface EventMapper {

	
	//이벤트 게시판 등록
	public void enrollE(EventVO vo);
	
	/*이벤트 게시판 목록*/
	public List<EventVO> getListE();
	
	/*이벤트 게시판 조회*/
	public EventVO getPageE(int eBno);
	
	/*이벤트 게시판 수정 */
	public int modifyE(EventVO ev);
	
	/*게시판 삭제*/
	public int deleteE(int eBno);
	
}

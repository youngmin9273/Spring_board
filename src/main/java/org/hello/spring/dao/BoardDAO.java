package org.hello.spring.dao;

import java.util.List;

import org.hello.spring.domain.BoardVO;
import org.hello.spring.domain.Criteria;

public interface BoardDAO {
	
	public void create(BoardVO vo)throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public BoardVO read(Integer b_no) throws Exception;
	
	public void delete(int b_no) throws Exception;

	public void update(BoardVO vo)throws Exception;
	
	
	public List<BoardVO> listPage(int page) throws Exception;
	//리스트 몇개씩 보여주는지
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	//total count 계산
	public int countPaging(Criteria cri)throws Exception;
}

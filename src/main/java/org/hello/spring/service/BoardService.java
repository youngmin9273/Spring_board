package org.hello.spring.service;

import java.util.List;

import org.hello.spring.domain.BoardVO;
import org.hello.spring.domain.Criteria;

public interface BoardService {
	
	public void create(BoardVO vo) throws Exception;
    
    public List<BoardVO> listAll() throws Exception;
    
    public BoardVO read(Integer b_no) throws Exception;
    
    public void delete(int b_no) throws Exception;
    
    public void update(BoardVO vo) throws Exception;

    public List<BoardVO> listCriteria(Criteria cri)throws Exception;
    
    public int listCountCriteria(Criteria cri)throws Exception;
}

package org.hello.spring.dao;

import java.util.List;

import org.hello.spring.domain.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> list(Integer b_no) throws Exception;
	
	public void create(ReplyVO vo)throws Exception;
	
	public void update(ReplyVO vo)throws Exception;
	
	public void delete(Integer r_no)throws Exception;
}

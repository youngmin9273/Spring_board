package org.hello.spring.service;

import java.util.List;

import org.hello.spring.domain.ReplyVO;

public interface ReplyService {

	public void addReply(ReplyVO vo)throws Exception;
	
	public List<ReplyVO> listReply(Integer b_no)throws Exception;
	
	public void modifyReply(ReplyVO vo)throws Exception;
	
	public void removeReply(Integer r_no)throws Exception;
	
}

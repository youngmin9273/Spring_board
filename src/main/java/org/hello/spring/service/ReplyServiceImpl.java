package org.hello.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.hello.spring.dao.ReplyDAO;
import org.hello.spring.domain.ReplyVO;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	
	@Override
	public void addReply(ReplyVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<ReplyVO> listReply(Integer b_no) throws Exception {
		return dao.list(b_no);
	}

	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void removeReply(Integer r_no) throws Exception {
		dao.delete(r_no);
	}

}

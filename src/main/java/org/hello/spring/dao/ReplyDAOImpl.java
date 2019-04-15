package org.hello.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.hello.spring.domain.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.hello.mapper.ReplyMapper";
	
	@Override
	public List<ReplyVO> list(Integer b_no) throws Exception {
		return session.selectList(namespace+".list", b_no);
	}

	@Override
	public void create(ReplyVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer r_no) throws Exception {
		session.delete(namespace+".delete", r_no);
	}

}

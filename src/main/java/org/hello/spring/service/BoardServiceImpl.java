package org.hello.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.hello.spring.dao.BoardDAO;
import org.hello.spring.domain.BoardVO;
import org.hello.spring.domain.Criteria;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	 @Inject
	    private BoardDAO dao;
	    
	    @Override
	    public void create(BoardVO vo) throws Exception {
	        dao.create(vo);
	    }
	    @Override
	    public List<BoardVO> listAll() throws Exception {
	        return dao.listAll();
	    }
	    @Override
	    public BoardVO read(Integer b_no) throws Exception {
	        return dao.read(b_no);
	    }
	    @Override
		public void delete(int b_no) throws Exception {
	    	 dao.delete(b_no);
	    }
	    @Override
	    public void update(BoardVO vo) throws Exception {
	        dao.update(vo);
	    }
		@Override
		public List<BoardVO> listCriteria(Criteria cri) throws Exception {
			return dao.listCriteria(cri);
		}
		@Override
		public int listCountCriteria(Criteria cri) throws Exception {
			return dao.countPaging(cri);
		}
		
}

package org.hello.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.hello.spring.domain.BoardVO;
import org.hello.spring.domain.Criteria;
import org.springframework.stereotype.Repository;

@Repository //DAO라고 명시 (DAO를 스프링에서 인식시켜줌)
public class BoardDAOImpl implements BoardDAO {

    @Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession; 
    
    private static final String namespace = "org.hello.mapper.BoardMapper"; 
                                            //memberMapper.xml의 namespace값

  //게시판추가
    @Override
    public void create(BoardVO vo) throws Exception {
        sqlSession.insert(namespace+".insertBoard", vo);
    }
    //게시판보기
    @Override
    public List<BoardVO> listAll() throws Exception {
        return sqlSession.selectList(namespace+".listBoard");
    }
    //게시판 상세
    @Override
    public BoardVO read(Integer b_no) throws Exception {
        return  sqlSession.selectOne(namespace+".detailBoard", b_no);
    }
    //게시판 삭제
    @Override
	public void delete(int b_no) throws Exception {
    	sqlSession.delete(namespace+".deleteBoard", b_no);
	}
    //게시판 수정
    @Override
    public void update(BoardVO vo) throws Exception {
        sqlSession.update(namespace+".updateBoard", vo);
    }
    
	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		if(page<=0) {
			page = 1;
		}
		page = (page-1)*10;
		return sqlSession.selectList(namespace+".listPage");
	}
	
	//리스트 몇개씩 보여주는지
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace+".listCriteria", cri);
	}
	
	//total count 계산
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".countPaging",cri);
	}

}

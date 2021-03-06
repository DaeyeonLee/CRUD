package com.daeyeonlee.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.daeyeonlee.model.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;
	private static String namespace = "com.daeyeonlee.mappers.ReplyMapper";
	
	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		return session.selectList(namespace+".list", bno);
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
	public void delete(Integer rno) throws Exception {
		session.delete(namespace+".delete", rno);
	}

}

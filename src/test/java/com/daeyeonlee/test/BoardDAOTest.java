package com.daeyeonlee.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.daeyeonlee.dao.BoardDAO;
import com.daeyeonlee.model.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {

	@Inject
	private BoardDAO dao;
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test
	public void testCreate() throws Exception{
		BoardVO board = new BoardVO();
		board.setTitle("새로운 제목");
		board.setContent("새로운 내용");
		board.setWriter("testUser");
		dao.create(board);
	}
	
	@Test
	public void testRead() throws Exception{
		logger.info(dao.read(2).toString());
	}
	
	@Test
	public void testUpdate() throws Exception{
		BoardVO board = new BoardVO();
		board.setBno(2);
		board.setTitle("수정된 제목");
		board.setContent("수정된 내용");
		dao.update(board);
	}
	
	@Test
	public void testDelete() throws Exception{
		dao.delete(2);
	}
	
}

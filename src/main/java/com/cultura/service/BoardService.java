package com.cultura.service;

import java.util.List;

import com.cultura.domain.BoardVO;

public interface BoardService {
	
	public void create(BoardVO board)throws Exception;
	public BoardVO read(Integer board_id)throws Exception;
	public void update(BoardVO board)throws Exception;
	public void delete(Integer board_id)throws Exception;
	public List<BoardVO> listAll() throws Exception;	

}

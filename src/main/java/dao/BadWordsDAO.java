package dao;

import java.util.List;

import dto.BadWordsDTO;

public interface BadWordsDAO {
	List<String> select(String word);
	List<BadWordsDTO> selectRealAll();
	void insert(BadWordsDTO dto);
	void delete(int num);
	List<String> selectAll();
	String search(String word);
	int count();
}

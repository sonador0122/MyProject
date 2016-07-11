package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.BadWordsDTO;

@Repository("badwordsdao")
public class BadWordsDAOImpl implements BadWordsDAO {
	@Autowired
	private SqlSession sqlSession;

	public List<String> select(String word) {
		System.out.println("들어는봤니? 욕DB");
		List<String> badword = sqlSession.selectList("badwordsMapper.badwords_select", word);
		return badword;
	}

	public void insert(BadWordsDTO dto) {
		sqlSession.insert("badwordsMapper.badwords_insert", dto);
	}

	public void delete(int num) {
		sqlSession.delete("badwordsMapper.badwords_delete", num);
	}

	@Override
	public List<String> selectAll() {
		List<String> str = sqlSession.selectList("badwordsMapper.badwords_selectAll");
		return str;
	}

	@Override
	public List<BadWordsDTO> selectRealAll() {
		List<BadWordsDTO> wordlist = sqlSession.selectList("badwordsMapper.badwords_selectRealAll");
		return wordlist;
	}

	@Override
	public String search(String word) {
		String searchword = (String) sqlSession.selectOne("badwordsMapper.badwords_search",
				word);
		return searchword;
	}

	@Override
	public int count() {
		int count = (Integer) sqlSession.selectOne("badwordsMapper.badwords_count");
		return count;
	}

}

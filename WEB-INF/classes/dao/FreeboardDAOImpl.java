package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import dto.FreeboardDTO;

@Repository("freedao")
public class FreeboardDAOImpl implements FreeboardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FreeboardDTO> free_list() {
		System.out.println("들어는 오냐?");
		List<FreeboardDTO> freelist = sqlSession
				.selectList("freeboard.free_select");
		System.out.println("freeboard list ==>" + freelist.size());
		return freelist;
	}

	@Override
	public FreeboardDTO free_view(int free_no) {
		System.out.println("free_view");
		FreeboardDTO freeview = (FreeboardDTO) sqlSession.selectOne(
				"freeboard.free_view", free_no);
		return freeview;
	}

	@Override
	public void free_insert(FreeboardDTO free) {
		System.out.println("free_insert");
		System.out.println("free=" + free.toString());
		sqlSession.insert("freeboard.free_insert", free);
	}

	public int found_free_no() {
		System.out.println("found_free_no");
		int free_no = (int)sqlSession.selectOne("freeboard.found_free_no");
		System.out.println("free_no==>"+free_no);
		return free_no;
	}

	@Override
	public void add_free_count(int free_no) {
		System.out.println("add_free_count");
		sqlSession.update("freeboard.add_free_count", free_no);
	}

	@Override
	public void free_delete(FreeboardDTO free) {
		System.out.println("free_delete");
		sqlSession.delete("freeboard.free_delete", free);
	}

	@Override
	public void free_modify(FreeboardDTO free) {
		System.out.println("free_modify");
		System.out.println("haha==>" + free.toString());
		sqlSession.update("freeboard.free_modify", free);
	}

	@Override
	public String found_password(int free_no) {
		System.out.println("found_password");
		String free_password = (String) sqlSession.selectOne(
				"freeboard.found_password", free_no);
		System.out.println("dao에서 free_password=>" + free_password);
		return free_password;
	}

	@Override
	public FreeboardDTO free_modify_select(FreeboardDTO free) {
		FreeboardDTO modify = (FreeboardDTO) sqlSession.selectOne(
				"freeboard.free_modify_select", free);
		return modify;
	}

}

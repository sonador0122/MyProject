package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.TestDTO;
import dto.supportRegDTO;

@Repository("msgdao")
public class TestDAOImpl implements TestDAO {
	@Autowired
	private SqlSession sqlSession;

	public List msg_list() {
		List<TestDTO> msglist = sqlSession.selectList("msgMapper.test_selectall");
		System.out.println("msglist===>"+msglist.size());
		return msglist;
	}
	
	public void msg_insert(TestDTO dto){
		sqlSession.insert("msgMapper.test_insert", dto);
	}

	public List getMsgList() {
		System.out.println("---getMsgList---");
		List<TestDTO> msglist_all = sqlSession.selectList("msgMapper.msg_List");
		//System.out.println("msglist_all===>"+ msglist_all.size());
		System.out.println("** "+msglist_all);
		return  msglist_all;
	}

	public List getMyMsgList(String userNum) {
		System.out.println("---getMyMsgList--- ::"+userNum);
		List<supportRegDTO> myMsglist  = sqlSession.selectList("msgMapper.msg_myList", userNum);
		System.out.println("** "+myMsglist);
		return myMsglist;
	}

	@Override
	public void msg_delete(int msg_num) {
		sqlSession.delete("msgMapper.msg_delete", msg_num);
	}

	@Override
	public int count() {
		int count=(Integer)sqlSession.selectOne("msgMapper.msg_count");
		return count;
	}

	@Override
	public int userCount(int user_num) {
		int userCount=(Integer)sqlSession.selectOne("msgMapper.msg_userCount", user_num);
		return userCount;
	}

	@Override
	public List<TestDTO> userSelect(int user_num) {
		List<TestDTO> msglist=sqlSession.selectList("msgMapper.msg_Userselect", user_num);
		return msglist;
	}
	
}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.MemberDTO;
@Repository("member")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void member_insert(MemberDTO user) {
		sqlSession.insert("memberMapper.member_insert", user);	
		System.out.println("twitter member insert");
	}

	@Override
	public List<MemberDTO> member_select() {
		List<MemberDTO> memberlist = sqlSession.selectList("memberMapper.member_select");
		return memberlist;
	}

	@Override
	public int member_user_num(MemberDTO user) {
		int user_num=(Integer)sqlSession.selectOne("memberMapper.member_user_num", user);
		return user_num;
	}
	
	public String member_userid(String id){
		String userid=(String)sqlSession.selectOne("memberMapper.member_userid", id);
		return userid;
	}
	
}

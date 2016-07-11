package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.AdminMemberDTO;
import dto.ConnectManageDTO;
import dto.TestDTO;
import dto.supportRegDTO;

@Repository("admindao")
public class AdminMemberDAOImpl implements AdminMemberDAO {
	@Autowired
	
	private SqlSession sqlSession;


	
//	@Override
	public int getTotalMemberCount() {
		System.out.println("membertotal");
		int membertotal = (Integer)sqlSession.selectOne("adminMapper.totalcount");
		System.out.println("membertotal"+membertotal);
		return membertotal;
	}

	//	@Override
	public int getFacebookMemberCount() {
		System.out.println("facebookmember");
		int facebookmember = (Integer)sqlSession.selectOne("adminMapper.facebookcount");
		System.out.println("facebookmember"+facebookmember);
		return facebookmember;
	}

	//@Override
	public int getTwitterMemberCount() {
		System.out.println("twittermember");
		int twittermember = (Integer)sqlSession.selectOne("adminMapper.twittercount");
		System.out.println("twittermember"+twittermember);
		return twittermember;
	}

	//@Override
	public int getUserMemberCount() {
		System.out.println("usermember");
		int usermember = (Integer)sqlSession.selectOne("adminMapper.usercount");
		System.out.println("usermember"+usermember);
		return usermember;
	}

	
	//@Override
	public void insertMember(AdminMemberDTO member){
		System.out.println("memberinsert");
		sqlSession.insert("adminMapper.insertmember", member);
	}
	
	public int getUser_num(){
		System.out.println("Get_User_num");
		int user_num = (Integer)sqlSession.selectOne("adminMapper.getusernum");
		return user_num;
	}
	
	//@Override
	public String searchMember(String email){
		System.out.println("membersearch");
		String searchmember = (String)sqlSession.selectOne("adminMapper.searchmember", email);
		System.out.println(searchmember);
		return searchmember;
	}

	
	//	@Override
	public boolean searchVisits(String user_num){
		System.out.println("visitssearch");
		String connectnum = (String)sqlSession.selectOne("adminMapper.visitssearch", user_num);
		
		if(connectnum!=null){
			System.out.println("true");
			return true;
		}else{
			System.out.println("false");
			return false;
		}
		
	}
	
	//	@Override
	public void insertVisits(String user_num){
		System.out.println("insertvisits");
		sqlSession.insert("adminMapper.insertvisits", user_num);
	}
	
	//	@Override
	public List<ConnectManageDTO> getFacebookToday(){
		System.out.println("facebooktoday");
		List<ConnectManageDTO> facebooktoday = sqlSession.selectList("adminMapper.facebooktoday");
		System.out.println("facebooktoday"+facebooktoday.toString());
		return facebooktoday;
	}
	
	//	@Override
	public List<ConnectManageDTO> getTwitterToday(){
		System.out.println("twittertoday");
		List<ConnectManageDTO> twittertoday = sqlSession.selectList("adminMapper.twittertoday");
		System.out.println("twittertoday"+twittertoday);
		return twittertoday;
	}
	
	//	@Override
	public List<ConnectManageDTO> getUserToday(){
		System.out.println("usertoday");
		List<ConnectManageDTO> usertoday = sqlSession.selectList("adminMapper.usertoday");
		System.out.println("usertoday"+usertoday);
		return usertoday;
	}
	
	public List<ConnectManageDTO> getUserMonthlyCount(){
		System.out.println("UserMonthly");
		List<ConnectManageDTO> usermonthly = sqlSession.selectList("adminMapper.user_monthlycount");
		
		return usermonthly;		
	}
	public List<TestDTO> getRecentMsg(){
		
		System.out.println("RecentMSG");
		List<TestDTO> recent_msg = sqlSession.selectList("adminMapper.recent_message");		
		return recent_msg;
	}
	public List<AdminMemberDTO> getRecentMember(){
		System.out.println("RecentMember");
		List<AdminMemberDTO> recent_member = sqlSession.selectList("adminMapper.recent_member");
		return recent_member;
	}
	
	public List<AdminMemberDTO> getMemberList(){
		System.out.println("memberList");
		List<AdminMemberDTO> member_list = sqlSession.selectList("adminMapper.member_list");
		int memberlistsize = member_list.size();
		for (int i = 0; i < memberlistsize; i++) {
			String newhire = member_list.get(i).getHiredate().substring(0, 10);
			member_list.get(i).setHiredate(newhire);
		}
		System.out.println(member_list.get(0).getHiredate());
		return member_list;
	}

	@Override
	public String adminlogin(AdminMemberDTO dto) {
		System.out.println("form parameter userid="+dto.getUserid());
		System.out.println("password=="+dto.getPassword());
		String userid=(String)sqlSession.selectOne("adminMapper.admin_login", dto);
		System.out.println("userid="+userid);
		return userid;
	}
	
	public List<supportRegDTO> getSupportRank(){
		System.out.println("supportRank");
		List<supportRegDTO> support_rank = sqlSession.selectList("adminMapper.support_rank");
		return support_rank;
	}
	
	public void getDeleteMember(String user_num){
		System.out.println("DeleteMember");
		sqlSession.delete("adminMapper.delete_member",user_num);
	}

	@Override
	public AdminMemberDTO getUsername(int user_num) {
		AdminMemberDTO dto=(AdminMemberDTO)sqlSession.selectOne("adminMapper.search_username", user_num);
		System.out.println("dto==>"+dto);
		return dto;
	}
}












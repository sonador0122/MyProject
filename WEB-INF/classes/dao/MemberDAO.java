package dao;

import java.util.List;

import dto.MemberDTO;

public interface MemberDAO {
	public void member_insert(MemberDTO user);
	public List<MemberDTO> member_select();
	public int member_user_num(MemberDTO user);
	public String member_userid(String id);
}

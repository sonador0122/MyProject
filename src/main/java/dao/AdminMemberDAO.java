package dao;

import java.util.List;

import dto.AdminMemberDTO;
import dto.AnimalsDTO;
import dto.ConnectManageDTO;
import dto.TestDTO;
import dto.supportRegDTO;

public interface AdminMemberDAO {
	
	//오늘 가입자 현황 (sns별로)
	public int getTotalMemberCount();
	public int getFacebookMemberCount();
	public int getTwitterMemberCount();
	public int getUserMemberCount();
	
	//페이스북으로 가입 및 로그인
	
	public void insertMember(AdminMemberDTO member);
	public String searchMember(String email);
	
	//일일 방문자 판별(오늘 들어온 사람은 방문횟수가 1로 고정)
	public boolean searchVisits(String user_num);
	public void insertVisits(String user_num);
	public int getUser_num();
	public List<ConnectManageDTO> getFacebookToday();
	public List<ConnectManageDTO> getTwitterToday();
	public List<ConnectManageDTO> getUserToday();
	public List<ConnectManageDTO> getUserMonthlyCount();
	
	public List<TestDTO> getRecentMsg();
	
	public List<AdminMemberDTO> getRecentMember();
	
	public List<AdminMemberDTO> getMemberList();
	
	//���� �α���
	public String adminlogin(AdminMemberDTO dto);
	
	//�Ŀ� ��ŷ
	public List<supportRegDTO> getSupportRank();
	
	//memberŻ��
	public void getDeleteMember(String user_num);
	
	//���������� ���̵�
	public AdminMemberDTO getUsername(int user_num);
}

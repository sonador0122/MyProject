package dao;

import java.util.List;

import dto.TestDTO;
import dto.supportRegDTO;

public interface TestDAO {
	public List msg_list();
	public void msg_insert(TestDTO dto);
	public List<supportRegDTO> getMyMsgList(String userNum);
	public List<TestDTO> getMsgList();
	public void msg_delete(int msg_num);
	public int count();
	public int userCount(int user_num);
	public List<TestDTO> userSelect(int user_num);
}

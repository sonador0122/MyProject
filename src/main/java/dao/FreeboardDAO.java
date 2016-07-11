package dao;

import java.util.List;

import dto.FreeboardDTO;


public interface FreeboardDAO {
	public List<FreeboardDTO> free_list();
	public FreeboardDTO free_view(int free_no);
	public void free_insert(FreeboardDTO free);
	//public int found_free_no(FreeboardDTO free);
	public int found_free_no();
	//��ȸ�� ����
	public void add_free_count(int free_no);
	//����� �˻�
	public String found_password(int free_no);
	//����
	public void free_delete(FreeboardDTO free);
	//����
	public FreeboardDTO free_modify_select(FreeboardDTO free);
	public void free_modify(FreeboardDTO free);
}

package dao;

import java.lang.reflect.Array;
import java.util.List;

import dto.supportRegDTO;

public interface supportDAO {

	public void insert();
	public void sptInsert(supportRegDTO spt);
	public List<supportRegDTO> getSptList();
	public int getTotalAmount();
	public void setState(String[] param);
	public void dltInfo(String supportCode);

	public List<supportRegDTO> getTodayInfo();
	public int[] getQuarterAmount();
	public double[] getLoginAmount(int totalAmount);
	public int getYdAmount();
	public int getWkAmount();
	public List<supportRegDTO> getMonthlyMax();
	List<supportRegDTO> getMySptList(String userNum);
	public List<String> getNameList();
	public int getUserAmount(int user_num);
	public int getUserCount(int user_num);
	public void insertVisits(String user_num);

	
	
}

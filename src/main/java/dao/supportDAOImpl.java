package dao;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.supportRegDTO;

@Repository("sptDAO")
public class supportDAOImpl implements supportDAO {

	@Autowired
	private SqlSession sqlSession;

	public void insert() {

	}

	public void sptInsert(supportRegDTO spt) {
		System.out.println("---supportRegInsert---");
		if (spt.getPaymentType().equals("PT_deposit")) {
			spt.setState("미입금");
		}
		sqlSession.insert("edenMapper.spt_insert", spt);
		System.out.println("------END------");
	}

	@Override
	// 내 후원 정보
	public List<supportRegDTO> getMySptList(String userNum) {
		System.out.println("---getMySptInfo--- ::" + userNum);
		List<supportRegDTO> mySptlist = sqlSession.selectOne("edenMapper.spt_mySptList",
				userNum);
		// System.out.println("** "+mySptlist);
		return mySptlist;
	}

	@Override
	public List<supportRegDTO> getSptList() {
		System.out.println("---getSptInfo---");
		List<supportRegDTO> sptlist = sqlSession.selectList("edenMapper.spt_selectAll");
		return sptlist;
	}

	@Override
	public int getTotalAmount() {
		System.out.println("---getTotalAmount---");
		int totalAmount = (int) sqlSession
				.selectOne("edenMapper.spt_selectTotalAmount");
		return totalAmount;
	}

	@Override
	public void setState(String[] param) {
		System.out.println("---setState---");
		for (String supportCode : param) { 
			// 배열의 내용을 출력할 때 향상된 for문으로 간단하게 출력
			System.out.println("**update_supportCode : " + supportCode);
			sqlSession.update("edenMapper.spt_updateState", supportCode);
		}
	}

	@Override
	public void dltInfo(String supportCode) {
		System.out.println("---dltnfo---" + supportCode);
		sqlSession.delete("edenMapper.spt_deleteInfo", supportCode);

	}

	@Override
	public List<supportRegDTO> getTodayInfo() {
		System.out.println("---getTodayInfo---");
		List<supportRegDTO> sptTodaylist = sqlSession
				.selectList("edenMapper.spt_todayInfo");
		return sptTodaylist;
	}

	@Override
	public int[] getQuarterAmount() {
		System.out.println("---getQuarterAmount---");
		java.util.Calendar cal = java.util.Calendar.getInstance();
		String year = cal.get(cal.YEAR) + 1 + "";
		/* 함수로 별도 분리할 것 => 이렇게 해서 String으로 받으면 안됨 */ 
		int qtaArr[] = new int[4];
		for (int i = 0; i < 4; i++) {
			HashMap<String, String> params = new HashMap<String, String>();
			int qta = 0;
			switch (i) {
			case 0:
				params.put("startParam", "14/01/01");
				params.put("endParam", "14/04/01");
				break;
			case 1:
				params.put("startParam", "14/04/01");
				params.put("endParam", "14/07/01");
				break;
			case 2:
				params.put("startParam", "14/07/01");
				params.put("endParam", "14/10/01");
				break;
			case 3:
				params.put("startParam", "14/10/01");
				params.put("endParam", "15/01/01");
				break;
			}
			System.out.println("----" + i + "----");
			if (sqlSession.selectOne("edenMapper.spt_QuarterAmount", params) != null) {
				qtaArr[i] = (Integer) sqlSession.selectOne(
						"edenMapper.spt_QuarterAmount", params);
			}
			System.out.println("*** " + qtaArr[i]);

		} // for END
		return qtaArr;
	}

	@Override
	public double[] getLoginAmount(int totalAmount) {
		System.out.println("--- getLoginAmount---");
		/*
		 
		* // (type 총액 / 전체총액) * 100 
				 
		* Float나 Double로 사칙연산을 하는 경우 정확한 값을 얻지 못함(소수점 이하의 값을 제대로 읽지 못하기 때문)				 
		* ex) double rate = 13/5; System.out.println(rate); ===> 2.0諛섑솚
				 
		* BigDecimal 사용
				 
		* ex) BigDecimal d1 = new BigDecimal(13.0); BigDecimal
				 
		* d2 = new BigDecimal(5.0); BigDecimal divideResult = d1.divide(d2, 2, BigDecimal.ROUND_UP); 
				 
		* System.out.println(divideResult); ===> 2.6 반환
				 
		*/ 
		int paramArr[] = new int[3];
		double lgaArr[] = new double[3];
		String type[] = { "t", "f", "u" };
		for (int i = 0; i < type.length; i++) {
			paramArr[i] = (int) sqlSession.selectOne("edenMapper.spt_LoginAmount",
					type[i]);
			System.out.println("** " + type[i]);
			BigDecimal tAmount = new BigDecimal(totalAmount);
			BigDecimal LoginAmount = new BigDecimal(paramArr[i]);
			BigDecimal divideResult = LoginAmount.divide(tAmount, 2,
					BigDecimal.ROUND_UP);
			System.out.println("** " + i + ":" + divideResult.doubleValue());
			lgaArr[i] = divideResult.doubleValue() * 100;
		} // for END
		return lgaArr;
	}

	@Override
	public int getYdAmount() {
		System.out.println("--getYdAmount-- null체크");
		String ydAmount = (String) sqlSession
				.selectOne("edenMapper.spt_yesterdayAmount");
		System.out.println("** " + ydAmount);
		if (ydAmount == null || ydAmount.equals("")) {
			return 0;
		} else {
			return Integer.parseInt(ydAmount);
		}

	}

	@Override
	public int getWkAmount() {
		System.out.println("---getWkAmount---");
		String wkAmount = (String) sqlSession.selectOne("edenMapper.spt_weekAmount");
		System.out.println("** " + wkAmount);
		if (wkAmount == null || wkAmount.equals("")) {
			return 0;
		} else {
			return Integer.parseInt(wkAmount);
		}
	}

	@Override
	public List<supportRegDTO> getMonthlyMax() {
		System.out.println("---getMonthlyMax---");
		List<supportRegDTO> MonthlyMax = sqlSession.selectList("edenMapper.spt_monthlyMax");
		System.out.println("** "+MonthlyMax);
		return MonthlyMax;
	}

	@Override
	public List<String> getNameList() {
		System.out.println("namelist뽑으러 dao에 들어옴");
		List<String> namelist = sqlSession.selectList("edenMapper.spt_username");
		System.out.println("namelist의 size===" + namelist.size());
		for (int i = 0; i < namelist.size(); i++) {
			System.out.println(namelist.get(i));
		}
		return namelist;
	}

	@Override
	public int getUserAmount(int user_num) {
		int amount = (Integer) sqlSession.selectOne("edenMapper.spt_amount", user_num);
		return amount;
	}

	@Override
	public int getUserCount(int user_num) {
		int count = (Integer) sqlSession.selectOne("edenMapper.spt_count", user_num);
		return count;
	}

	@Override
	public void insertVisits(String user_num) {
		System.out.println("insertvisits");
		sqlSession.insert("adminMapper.insertvisits", user_num);
	}

}

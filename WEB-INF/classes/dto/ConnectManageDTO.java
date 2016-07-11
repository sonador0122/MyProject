package dto;

public class ConnectManageDTO {
	int connect_num;
	int user_num;
	String connectdate;
	
	int sns_user_count;
	int user_monthly_count;
	String monthconnectdate;
	
	public ConnectManageDTO(){
		super();
	}
	
	public ConnectManageDTO(int connect_num, int user_num, String connectdate) {
		super();
		this.connect_num = connect_num;
		this.user_num = user_num;
		this.connectdate = connectdate;
	}
	
	//sns별 방문자 count DTO
	public ConnectManageDTO(String connectdate,int user_count){
		super();
		this.connectdate = connectdate;
		this.sns_user_count = user_count;		
	}
	
	//월별 방문자 count
	public ConnectManageDTO(int user_monthly_count, String monthconnectdate) {
		super();
		this.user_monthly_count = user_monthly_count;
		this.monthconnectdate = monthconnectdate;
	}

	public int getConnect_num() {
		return connect_num;
	}
	public void setConnect_num(int connect_num) {
		this.connect_num = connect_num;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getConnectdate() {
		return connectdate;
	}
	public void setConnectdate(String connectdate) {
		this.connectdate = connectdate;
	}
	
	public int getSns_user_count() {
		return sns_user_count;
	}

	public void setSns_user_count(int sns_user_count) {
		this.sns_user_count = sns_user_count;
	}

	public int getUser_monthly_count() {
		return user_monthly_count;
	}

	public void setUser_monthly_count(int user_monthly_count) {
		this.user_monthly_count = user_monthly_count;
	}
	
	public String getMonthconnectdate() {
		return monthconnectdate;
	}

	public void setMonthconnectdate(String monthconnectdate) {
		this.monthconnectdate = monthconnectdate;
	}

	@Override
	public String toString() {
		return "ConnectManageDTO [connect_num=" + connect_num + ", user_num="
				+ user_num + ", connectdate=" + connectdate
				+ ", sns_user_count=" + sns_user_count
				+ ", user_monthly_count=" + user_monthly_count
				+ ", monthconnectdate=" + monthconnectdate + "]";
	}
	
}

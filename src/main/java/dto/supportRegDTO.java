package dto;

public class supportRegDTO {
	 String supportCode;
	 String email;
	 String supportType;
	 String paymentType;
	 String bankName;
	 String accountNum;
	 String name;
	 int amount;
	 String infodate;
	 String state;
	 String user_num;
	
	
	 String sumamount;
	 String mydate;
	 int maxval;
	 int minval;
	
	@Override
	public String toString() {
		return "supportRegDTO ["+mydate+"-"+maxval+" :: "+"supportCode=" + supportCode + ", email=" + email
				+ ", supportType=" + supportType + ", paymentType="
				+ paymentType + ", bankName=" + bankName + ", accountNum="
				+ accountNum + ", name=" + name + ", amount=" + amount
				+ ", infodate=" + infodate + ", state=" + state + ", user_num="
				+ user_num + "]";
	}

	public supportRegDTO(String mydate, int maxval) {
		super();
		this.mydate = mydate;
		this.maxval = maxval;
	}

	public supportRegDTO(String name, String sumamount){
		super();
		this.name = name;
		this.sumamount = sumamount;
	}

	public supportRegDTO(String mydate, int maxval, int minval) {
		super();
		this.mydate = mydate;
		this.maxval = maxval;
		this.minval = minval;
	}

	public supportRegDTO(String supportCode, String email, String supportType,
			String paymentType, String bankName, String accountNum,
			String name, int amount, String infodate, String state,
			String user_num) {
		super();
		this.supportCode = supportCode;
		this.email = email;
		this.supportType = supportType;
		this.paymentType = paymentType;
		this.bankName = bankName;
		this.accountNum = accountNum;
		this.name = name;
		this.amount = amount;
		this.infodate = infodate;
		this.state = state;
		this.user_num = user_num;
	}

	public supportRegDTO(){
		
	}
	public supportRegDTO(int totalAmount) {
		super();
		this.amount = totalAmount;
	}
	//��� ��
	public supportRegDTO(String supportCode, String email, String supportType,
			String paymentType, String bankName, String accountNum,
			String name, int amount, String infodate, String state) {
		super();
		this.supportCode = supportCode;
		this.email = email;
		this.supportType = supportType;
		this.paymentType = paymentType;
		this.bankName = bankName;
		this.accountNum = accountNum;
		this.name = name;
		this.amount = amount;
		this.infodate = infodate;
		this.state = state;
	}
	
	//�Ŀ� insert : supportCode, infodate, depositState ��� ��
	public supportRegDTO(String email, String supportType, String paymentType,
			String bankName, String accountNum, String name, int amount) {
		super();
		this.email = email;
		this.supportType = supportType;
		this.paymentType = paymentType;
		this.bankName = bankName;
		this.accountNum = accountNum;
		this.name = name;
		this.amount = amount;
	}

	public String getSupportCode() {
		return supportCode;
	}

	public void setSupportCode(String supportCode) {
		this.supportCode = supportCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSupportType() {
		return supportType;
	}

	public void setSupportType(String supportType) {
		this.supportType = supportType;	
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getaccountNum() {
		return accountNum;
	}

	public void setaccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getinfodate() {
		return infodate;
	}

	public void setinfodate(String infodate) {
		this.infodate = infodate;
	}

	public String getMydate() {
		return mydate;
	}
	public void setMydate(String mydate) {
		this.mydate = mydate;
	}
	public int getMaxval() {
		return maxval;
	}
	public void setMaxval(int maxval) {
		this.maxval = maxval;
	}
	public int getMinval() {
		return minval;
	}
	public void setMinval(int minval) {
		this.minval = minval;
	}
	

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getSumamount() {
		return sumamount;
	}

	public void setSumamount(String sumamount) {
		this.sumamount = sumamount;
	}
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	
}

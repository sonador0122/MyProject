package dto;

public class AdminMemberDTO {
	
	int user_num;	
	String snstype;		
	String userid;		
	String username;	
	String password;
	String img;		
	String email;	
	String cp;		
	String contury;	
	String hiredate;
	
	public AdminMemberDTO() {
		super();
	}


	
	public AdminMemberDTO(String username, String img, String hiredate) {
		super();
		this.username = username;
		this.img = img;
		this.hiredate = hiredate;
	}


	public AdminMemberDTO(int user_num, String snstype, String userid,
			String username, String password, String img, String email,
			String cp, String contury, String hiredate) {
		super();
		this.user_num = user_num;
		this.snstype = snstype;
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.img = img;
		this.email = email;
		this.cp = cp;
		this.contury = contury;
		this.hiredate = hiredate;
		
	}
	//���� �α���
	public AdminMemberDTO(String userid,String password){
		super();
		this.userid=userid;
		this.password=password;
	}
	
	public AdminMemberDTO(String hiredate, String username, String snstype, String email) {
		super();
		this.hiredate = hiredate;
		this.username = username;
		this.snstype = snstype;
		this.email = email;	
	}

	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getSnstype() {
		return snstype;
	}
	public void setSnstype(String snstype) {
		this.snstype = snstype;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getContury() {
		return contury;
	}
	public void setContury(String contury) {
		this.contury = contury;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	@Override
	public String toString() {
		return "AdminMemberDTO [user_num=" + user_num + ", snstype=" + snstype
				+ ", userid=" + userid + ", username=" + username
				+ ", password=" + password + ", img=" + img + ", email="
				+ email + ", cp=" + cp + ", contury=" + contury + ", hiredate="
				+ hiredate + "]";
	}
	
	public static void main(String[] args)
	{
		System.out.println("admin member call");
	
		AdminMemberDTO amd = new AdminMemberDTO();
		System.out.println("result" + amd.toString());
	}


}

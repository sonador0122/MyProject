package dto;

public class MemberDTO {
	/*
	 * 	user_num	number(5) Primary key,
	snstype		varchar2(30) null,
	userid		varchar2(30) null,
	username	varchar2(30) null,
	img		varchar2(500) null,
	email		varchar2(30) null,
	cp		varchar2(15) null,
	contury		varchar2(10) null,
	hiredate	date not null,
	 */
	 int user_num;
	 String snstype;
	 String userid;
	 String username;
	 String img;
	 String email;
	 String cp;
	 String contury;
	 String hiredate;
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(int user_num, String snstype, String userid,
			String username, String img, String email, String cp,
			String contury, String hiredate) {
		super();
		this.user_num = user_num;
		this.snstype = snstype;
		this.userid = userid;
		this.username = username;
		this.img = img;
		this.email = email;
		this.cp = cp;
		this.contury = contury;
		this.hiredate = hiredate;
	}

	//��ȸ�� insert
/*	public MemberDTO(String snstype, String username, String email, String cp) {
		super();
		this.snstype = snstype;
		this.username = username;
		this.email = email;
		this.cp = cp;
	}
*/
	
	//twitter������ user_num search��

	public MemberDTO(String snstype, String userid) {
		super();
		this.snstype = snstype;
		this.userid = userid;
	}

	
	
	//twitter member insert��
	public MemberDTO(String snstype, String userid, String username, String img) {
		super();
		this.snstype = snstype;
		this.userid = userid;
		this.username = username;
		this.img = img;
	}

	public MemberDTO(String snstype, String userid, String username,
			String img, String email, String cp, String contury) {
		super();
		this.snstype = snstype;
		this.userid = userid;
		this.username = username;
		this.img = img;
		this.email = email;
		this.cp = cp;
		this.contury = contury;
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
	
	
}

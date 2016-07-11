package dto;

public class TestDTO {
	/*
	 * create table msg(
		msg_num		number(5) Primary key,
		user_num	number(5) not null,
		msg_content	varchar2(900) not null
		);
	 */
	 int msg_num;
	 int user_num;
	 String msg_content;
	 String msg_name;
	 String msg_email;
	 String username;
	 String email;
	
	public TestDTO(){
		super();
	}

	//select����.
	public TestDTO(int msg_num,String username, String email, String msg_name, 
			String msg_email, String msg_content) {
		super();
		this.msg_num = msg_num;
		this.msg_content = msg_content;
		this.msg_name = msg_name;
		this.msg_email = msg_email;
		this.username = username;
		this.email = email;
	}

	//�޼��� insert_form���� controller�� �̵���Ű�� dto
	public TestDTO(int user_num,String msg_content) {
		super();
		this.user_num=user_num;
		this.msg_content = msg_content;
	}
	
	
	
	public TestDTO(int msg_num, String msg_content, String msg_name,
			String msg_email) {
		super();
		this.msg_num = msg_num;
		this.msg_content = msg_content;
		this.msg_name = msg_name;
		this.msg_email = msg_email;
	}

	/*public TestDTO(int user_num, String msg_content, String msg_name,
			String msg_email) {
		super();
		this.user_num = user_num;
		this.msg_content = msg_content;
		this.msg_name = msg_name;
		this.msg_email = msg_email;
	}*/

	public int getMsg_num() {
		return msg_num;
	}

	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getMsg_content() {
		return msg_content;
	}

	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}

	public String getMsg_name() {
		return msg_name;
	}

	public void setMsg_name(String msg_name) {
		this.msg_name = msg_name;
	}

	public String getMsg_email() {
		return msg_email;
	}

	public void setMsg_email(String msg_email) {
		this.msg_email = msg_email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}

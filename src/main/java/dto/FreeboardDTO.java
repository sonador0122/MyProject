package dto;

import org.springframework.web.multipart.MultipartFile;

public class FreeboardDTO {
	 int free_no;
	 String username;
	 String free_password;
	 String free_title;
	 String free_content;
	 MultipartFile free_uploadfile;
	 String free_filename;
	 float free_filesize;
	 String free_hiredate;
	 int free_count;

	@Override
	public String toString() {
		return "FreeboardDTO [free_no=" + free_no + ", username=" + username
				+ ", free_password=" + free_password + ", free_title="
				+ free_title + ", free_content=" + free_content
				+ ", free_uploadfile=" + free_uploadfile + ", free_filename="
				+ free_filename + ", free_filesize=" + free_filesize
				+ ", free_hiredate=" + free_hiredate + ", free_count="
				+ free_count + "]";
	}

	public FreeboardDTO() {
		super();
	}

	public FreeboardDTO(int free_no, String username, String free_password,
			String free_title, String free_content,
			MultipartFile free_uploadfile, String free_filename,
			float free_filesize, String free_hiredate, int free_count) {
		super();
		this.free_no = free_no;
		this.username = username;
		this.free_password = free_password;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_uploadfile = free_uploadfile;
		this.free_filename = free_filename;
		this.free_filesize = free_filesize;
		this.free_hiredate = free_hiredate;
		this.free_count = free_count;
	}

	// free_list
	public FreeboardDTO(int free_no, String username, String free_title,
			String free_hiredate, int free_count) {
		super();
		this.free_no = free_no;
		this.username = username;
		this.free_title = free_title;
		this.free_hiredate = free_hiredate;
		this.free_count = free_count;
	}

	// free_view
	public FreeboardDTO(int free_no, String username, String free_title,
			String free_content, String free_filename, String free_hiredate,
			int free_count) {
		super();
		this.free_no = free_no;
		this.username = username;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_filename = free_filename;
		this.free_hiredate = free_hiredate;
		this.free_count = free_count;
	}

	// free_insert_form
	public FreeboardDTO(String username, String free_password,
			String free_title, String free_content,
			MultipartFile free_uploadfile, int free_filesize) {
		super();
		this.username = username;
		this.free_password = free_password;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_uploadfile = free_uploadfile;
		this.free_filesize = free_filesize;
	}

	// free_insert
	public FreeboardDTO(String username, String free_password,
			String free_title, String free_content, String free_filename,
			float free_filesize, String free_hiredate) {
		super();
		this.username = username;
		this.free_password = free_password;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_filename = free_filename;
		this.free_filesize = free_filesize;
		this.free_hiredate = free_hiredate;
	}

	//free_update
	public FreeboardDTO(int free_no, String username,String free_password, String free_title,
			String free_content, String free_filename) {
		super();
		this.free_no = free_no;
		this.username = username;
		this.free_password = free_password;
		this.free_title = free_title;
		this.free_content = free_content;
	}
	//free_delete
	public FreeboardDTO(int free_no, String free_password) {
		super();
		this.free_no = free_no;
		this.free_password = free_password;
	}
	//free_modify_select
	public FreeboardDTO(int free_no, String username, String free_title,
			String free_content, String free_filename) {
		super();
		this.free_no = free_no;
		this.username = username;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_filename = free_filename;
	}

	public int getFree_no() {
		return free_no;
	}

	public void setFree_no(int free_no) {
		this.free_no = free_no;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFree_password() {
		return free_password;
	}

	public void setFree_password(String free_password) {
		this.free_password = free_password;
	}

	public String getFree_title() {
		return free_title;
	}

	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}

	public String getFree_content() {
		return free_content;
	}

	public void setFree_content(String free_content) {
		this.free_content = free_content;
	}

	public MultipartFile getFree_uploadfile() {
		return free_uploadfile;
	}

	public void setFree_uploadfile(MultipartFile free_uploadfile) {
		this.free_uploadfile = free_uploadfile;
	}

	public String getFree_filename() {
		return free_filename;
	}

	public void setFree_filename(String free_filename) {
		this.free_filename = free_filename;
	}

	public float getFree_filesize() {
		return free_filesize;
	}

	public void setFree_filesize(float free_filesize) {
		this.free_filesize = free_filesize;
	}

	public String getFree_hiredate() {
		return free_hiredate;
	}

	public void setFree_hiredate(String free_hiredate) {
		this.free_hiredate = free_hiredate;
	}

	public int getFree_count() {
		return free_count;
	}

	public void setFree_count(int free_count) {
		this.free_count = free_count;
	}

}

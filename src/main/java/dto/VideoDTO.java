package dto;


public class VideoDTO {
    private String video_no;
	private String id;
    private String titles;
    private String video_urls;
    private String[] video_type;
   
    public VideoDTO(){
    	
    }

    
    
    //�Է�
    public VideoDTO(String video_no, String id, String titles, String video_urls) {
		super();
		this.video_no = video_no;
		this.id = id;
		this.titles = titles;
		this.video_urls = video_urls;
	}
	//������
	
    public VideoDTO(String titles, String video_urls) {
		super();
		this.titles = titles;
		this.video_urls = video_urls;
	}

	@Override
	public String toString() {
		return "VideoDTO [video_no=" + video_no + ", id=" + id + ", titles="
				+ titles + ", video_urls=" + video_urls + "]";
	}

	public String getVideo_no() {
		return video_no;
	}

	public void setVideo_no(String video_no) {
		this.video_no = video_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitles() {
		return titles;
	}

	public void setTitles(String titles) {
		this.titles = titles;
	}

	public String getVideo_urls() {
		return video_urls;
	}

	public void setVideo_urls(String video_urls) {
		this.video_urls = video_urls;
	}

	public String[] getVideo_type() {
		return video_type;
	}

	public void setVideo_type(String[] video_type) {
		this.video_type = video_type;
	}


	
}

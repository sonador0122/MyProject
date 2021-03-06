package dto;


public class EventsDTO {
     String events_no;
	 String id;
     String title;
     String contents;
     String pic_urls;
     String evtDate;
     String siteUrl;
    
   
    public EventsDTO(String events_no, String id, String title,
			String contents, String pic_urls, String evtDate, String siteUrl) {
		super();
		this.events_no = events_no;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.pic_urls = pic_urls;
		this.evtDate = evtDate;
		this.siteUrl = siteUrl;
	}
    public EventsDTO(String events_no, String id, String title,
			String contents, String pic_urls, String evtDate) {
		super();
		this.events_no = events_no;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.pic_urls = pic_urls;
		this.evtDate = evtDate;
	
	}
	public EventsDTO(){
    	
    }

    @Override
	public String toString() {
		return "EventsDTO [events_no=" + events_no + ", id=" + id + ", title="
				+ title + ", contents=" + contents + ", pic_urls=" + pic_urls
				+ ", evtDate=" + evtDate + ", siteUrl=" + siteUrl + "]";
	}

	//�Է�
	public EventsDTO(String events_no,String id, String title, String contents,String pic_urls) {
		super();
		this.events_no=events_no;
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.pic_urls =pic_urls;
		
		
	}
	//������
	public EventsDTO(String title, String contents,String pic_urls) {
		super();
	
		this.title = title;
		this.contents = contents;
		this.pic_urls = pic_urls;
	}


	public String getEvtDate() {
		return evtDate;
	}

	public void setEvtDate(String evtDate) {
		this.evtDate = evtDate;
	}

	public String getSiteUrl() {
		return siteUrl;
	}

	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}

	public String getEvents_no() {
		return events_no;
	}

	public void setEvents_no(String events_no) {
		this.events_no = events_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getPic_urls() {
		return pic_urls;
	}

	public void setPic_urls(String pic_urls) {
		this.pic_urls = pic_urls;
	}

	

	
}

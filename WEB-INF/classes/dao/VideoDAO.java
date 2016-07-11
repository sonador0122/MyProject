package dao;

import java.util.List;





import dto.EventsDTO;
import dto.VideoDTO;

public interface VideoDAO {
	void insert();
	void insert(VideoDTO video);
	List<VideoDTO> getVideoList();
	void update(VideoDTO video);
	void delete(String titles);
	VideoDTO select(String video_no);
	void setState(String[] param);
	
	
	
}

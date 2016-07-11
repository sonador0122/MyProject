package dao;

import java.util.List;


import dto.EventsDTO;

public interface EventsDAO {
	void insert();
	void insert(EventsDTO events);
	List<EventsDTO> getEventsList();
	void update(EventsDTO events);
	void delete(String title);
    EventsDTO select(String events_no);

}

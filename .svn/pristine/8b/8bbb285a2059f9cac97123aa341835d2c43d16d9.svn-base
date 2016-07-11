package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.EventsDTO;

@Repository("eventsdao")
public class EventsDAOImpl implements EventsDAO {
	@Autowired
	// <=여기만 추가해주면 다른건 안 건들여도 됨.
	private SqlSession sqlSession;

	// 설정 파일에 등록된 JdbcTemplate 객체를 주입받도록 설정
	/*
	 * public MemberDAOImpl(JdbcTemplate template) { super(); this.template =
	 * template; }
	 */

	@Override
	public void insert() {
		// TODO Auto-generated method stub

	}

	public void insert(EventsDTO events) {
		sqlSession.insert("edeonMapper.events_insert", events);

	}

	@Override
	public List<EventsDTO> getEventsList() {
		List<EventsDTO> events = sqlSession.selectList("edenMapper.events");
		System.out.println("myTest ::::" + events);
		return events;
	}

	public void update(EventsDTO events) {
		sqlSession.update("edenMapper.events_update", events);

	}

	public void delete(String title) {
		sqlSession.delete("edenMapper.events_delete", title);
	}

	@Override
	public EventsDTO select(String events_no) {
		EventsDTO select = (EventsDTO) sqlSession.selectOne("edenMapper.events_select",
				events_no);

		return select;
	}

}

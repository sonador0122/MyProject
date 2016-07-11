package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.EventsDAO;
import dto.EventsDTO;
import dto.supportRegDTO;

@Controller
public class EventsController {
	
	List<EventsDTO> myList; 
	
	@Autowired
	@Qualifier("eventsdao")
	EventsDAO dao;

	@RequestMapping("/events_insert.do")
	public ModelAndView runInsert(@ModelAttribute("events") EventsDTO events) {
		System.out.println("�Ѿ���� ������>>" + events);
		dao.insert(events);
		return new ModelAndView("redirect:evtAdmin.do");
	}

	@RequestMapping("events_insertview.do")
	public String viewVideoInsert() {
		return "events_register";
	}

	@RequestMapping("/events_list.do")
	public ModelAndView eventsormlist() {
		myList = dao.getEventsList();
		System.out.println("- eventsList.size >> " + myList.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("eventsList", myList);
		mav.setViewName("events_view");
		return mav;
	}

	@RequestMapping("/events_updateview.do")
	public ModelAndView viewEventsUpdate(
			@RequestParam("events_no") String events_no) {
		EventsDTO select = dao.select(events_no);
		ModelAndView mav = new ModelAndView();
		mav.addObject("eventsSelect", select);
		mav.setViewName("events_update");
		return mav;

	}

	@RequestMapping("/events_update.do")
	public ModelAndView runUpdate(@ModelAttribute("events") EventsDTO events) {
		dao.update(events);
		return new ModelAndView("redirect:evtAdmin.do");
	}

	@RequestMapping("/events_delete.do")
	public ModelAndView rundelete(@RequestParam("events_no") String events_no) {
		dao.delete(events_no);
		return new ModelAndView("redirect:evtAdmin.do");
	}

	/* ���� - ���� */
	@RequestMapping("/evtAdmin.do")
	public ModelAndView vdoAdmin(HttpServletRequest request,
			HttpSession session, @ModelAttribute("spt") supportRegDTO spt) {
		System.out.println("==============evtAdmin.do============");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			myList = dao.getEventsList();
			System.out.println("**size>>>>" + myList.size());
			mav.addObject("eventsList", myList);
			mav.setViewName("admin/evtAdmin"); 
		}
		return mav;

	}

}

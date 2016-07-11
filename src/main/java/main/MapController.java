package main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.supportDAO;

@Controller
public class MapController {
	// 1. ��û�� map.do�� ������ ������ �޼ҵ�  tiles-config.xml�� ���
	@Autowired
	@Qualifier("sptDAO")
	supportDAO sptdao;
	
	
	@RequestMapping("/map.do")
	public ModelAndView map(HttpSession session){
		
		long totalmoney = sptdao.getTotalAmount();
		System.out.println(totalmoney);
		session.setAttribute("totalmoney",totalmoney);
		
		return new ModelAndView("map");
	}
}

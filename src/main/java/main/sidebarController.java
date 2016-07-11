package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.AdminMemberDAO;
import dao.TestDAO;
import dao.supportDAO;
import dto.AdminMemberDTO;
import dto.TestDTO;
import dto.supportRegDTO;

@Controller
public class sidebarController {
//메뉴를 정의합니다.
	
	@Autowired
	@Qualifier("sptDAO")
	supportDAO sptDao;
/*	@Autowired
	@Qualifier("memDAO")
	supportDAO memDao;*/
	@Autowired
	@Qualifier("msgdao")
	TestDAO msgDao;
	@Autowired
	@Qualifier("admindao")
	AdminMemberDAO admindao;

	@RequestMapping("/side_support.do")
	public ModelAndView select_totalAmount(HttpServletRequest request, @ModelAttribute("spt") supportRegDTO spt){
		System.out.println("==============chckAmonut.do============");
		int totalAmount =sptDao.getTotalAmount();
		System.out.println(">>"+totalAmount);
		ModelAndView mav = new ModelAndView();
		mav.addObject("totalAmount", totalAmount);
		List<String>namelist=sptDao.getNameList();
		mav.addObject("namelist",namelist);
		mav.setViewName("support"); //타일즈에 정의 해놓은 화면으로
		return mav;
	}

	@RequestMapping("/header_dashboard.do")
	public String showDashboardPage(){
		return "admin/index";
	}

	@RequestMapping("/header_myPage.do")
	public ModelAndView  showMySupportPage(@RequestParam("user_num") int user_num)throws Exception{
		System.out.println("==============header_myPage.do============");
		List<supportRegDTO> mySptlist = sptDao.getMySptList(user_num+"");
		ModelAndView mav = new ModelAndView();
		int amount=sptDao.getUserAmount(user_num);
		System.out.println("amount==>"+amount);
		int count = sptDao.getUserCount(user_num);
		System.out.println("count==>"+count);
		int userCount=msgDao.userCount(user_num);
		System.out.println("userCount==>"+userCount);
		List<TestDTO> msglist =msgDao.userSelect(user_num);
		System.out.println("msglist의 사이즈==>"+msglist.size());
		AdminMemberDTO addto=admindao.getUsername(user_num);
		System.out.println("addto==>"+addto);
		mav.addObject("addto",addto);
		System.out.println("addto");
		mav.addObject("amount",amount);
		System.out.println("amount");
		mav.addObject("count",count);
		System.out.println("count");
		mav.addObject("userCount",userCount);
		System.out.println("userCount");
		mav.addObject("msglist",msglist);
		System.out.println("msglist");
		mav.addObject("mySptlist", mySptlist);
		System.out.println("mySptlist");
		mav.setViewName("myPage"); 
		return mav;
	}
	
	
	
	
}

package admin.controller;

import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.AdminMemberDAO;
import dto.AdminMemberDTO;
import dto.TestDTO;
import dto.supportRegDTO;

@Controller
public class AdminIndexController {
	@Autowired
	@Qualifier("admindao")
	
	AdminMemberDAO dao;
	
	@RequestMapping("/adminlogin_form.do")
	public String admin_login_form(){
		return "admin/login";
	}
	@RequestMapping(value="/adminlogin.do",method = RequestMethod.POST)
	public ModelAndView runadminlogin(HttpServletRequest request,HttpSession session, @ModelAttribute("dto") AdminMemberDTO dto) throws Exception
    {
		ModelAndView mav = new ModelAndView();
		String userid=dao.adminlogin(dto);
		System.out.println("컨트롤의 userid는 "+userid);
		if (userid == null || userid.equals("")) {
			System.out.println("index네~");
			mav.setViewName("redirect:index.do");
		}else{
			System.out.println("admin/index 들어옴");
			session.setAttribute("userid", userid);
			session.setAttribute("user_num", 1);

			KeyPairGenerator keyGen = KeyPairGenerator.getInstance("RSA");
			keyGen.initialize(512);
			KeyPair keyPair = keyGen.genKeyPair();
			Key publicKey = keyPair.getPublic();
			Key privateKey = keyPair.getPrivate();
			
			session.setAttribute("__rsaPrivateKey__", privateKey);

			mav.setViewName("redirect:adminindex.do");
		}
		return mav;
	}
	
	@RequestMapping("/adminlogout.do")
	public ModelAndView adminlogout(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();	
		String userid=(String)request.getSession().getAttribute("userid");
		//request.getSession().removeAttribute("userid");
		request.getSession().invalidate();
		mav.setViewName("redirect:index.do");
		return mav;
	}
/*	@RequestMapping(value = "/adminindex.do",method = RequestMethod.POST)
	public String index() {
		System.out.println("-------------Admin Index");
		return "admin/index";
	}*/
	
	@RequestMapping(value = "/adminindex.do",method = RequestMethod.GET)
	public ModelAndView indexViewer(HttpServletRequest request,HttpSession session) {
		System.out.println("-------------Admin IndexViewer");
		ModelAndView mav = new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		}else{
			
			int facebookmember = dao.getFacebookMemberCount();
			int twittermember = dao.getTwitterMemberCount();
			int usermember = dao.getUserMemberCount();
			int totalmember = facebookmember+twittermember+usermember;
			System.out.println("totalmember : " + totalmember);
			System.out.println("facebookmember : "+facebookmember);
			System.out.println("twittermember : "+twittermember);
			System.out.println("usermember : "+usermember);
			System.out.println();
			
			int facebookpercentage = (facebookmember * 100/totalmember) ;
			int twitterpercentage = (twittermember * 100/totalmember) ;
			int userpercentage = (usermember * 100/totalmember) ;
			
			System.out.println("facebookpercentage : " + facebookpercentage);
			System.out.println("twitterpercentage : " + twitterpercentage);
			System.out.println("userpercentage : " + userpercentage);
			
			List<TestDTO> recent_msg = dao.getRecentMsg();
			List<AdminMemberDTO> recent_member = dao.getRecentMember();
			int membersize = recent_member.size();
			for (int i = 0; i < membersize; i++) {
				recent_member.get(i).setHiredate(recent_member.get(i).getHiredate().substring(0, 10));
			}
			
			
			List<supportRegDTO> support_rank = dao.getSupportRank();
			System.out.println(recent_member.toString());
			
			
			mav.addObject("facebookmember", facebookmember);
			mav.addObject("twittermember", twittermember);
			mav.addObject("usermember", usermember);
			mav.addObject("totalmember", totalmember);
			
			mav.addObject("facebookpercentage", facebookpercentage);
			mav.addObject("twitterpercentage", twitterpercentage);
			mav.addObject("userpercentage", userpercentage);
			
			mav.addObject("recent_msg", recent_msg);
			mav.addObject("recent_member", recent_member);
			
			mav.addObject("support_rank",support_rank);
			
			mav.setViewName("admin/index");
		}
		
		return mav;
	}
}

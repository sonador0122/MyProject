package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.MemberDAO;
import dto.MemberDTO;

@Controller
public class MemberController {
	@Autowired
	@Qualifier("member")
	MemberDAO dao;
	
	

	/*@RequestMapping("/join.do")
	public String memberJoin()(HttpServletRequest request,
			@ModelAttribute("user") MemberDTO user) {
		
		return new ModelAndView("redirect:join.do");
	}
	*/

	
	
	@RequestMapping("/member_insert.do")
	public ModelAndView bemember(HttpServletRequest request,
			@ModelAttribute("user") MemberDTO user){
		dao.member_insert(user);
		System.out.println("��ȸ�� ��Ʈ�ѷ�");
		return new ModelAndView("redirect:index.do");
	}
	
	@RequestMapping("/member_select.do")
	public ModelAndView memberlist(){
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> memberlist=dao.member_select();
		mav.addObject("memberlist",memberlist);
		mav.setViewName("memberview");//�̰� ���� �ȸ���.
		return mav;
	}
}

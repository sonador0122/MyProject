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

import dao.AdminMemberDAO;
import dao.BadWordsDAO;
import dao.TestDAO;
import dto.BadWordsDTO;
import dto.TestDTO;

@Controller
public class MsgController {	
	@Autowired
	@Qualifier("msgdao")
	TestDAO dao;
	
	@Autowired
	@Qualifier("badwordsdao")
	BadWordsDAO wdao;
	
	@Autowired
	@Qualifier("admindao")
	AdminMemberDAO addao;
	
	@RequestMapping("/msglist.do")
	public ModelAndView showMsglist(){
		ModelAndView mav = new ModelAndView();
		List<TestDTO> msglist =dao.msg_list();
		System.out.println("��Ʈ�ѿ��� msglist===>"+msglist.size());
		mav.addObject("msglist",msglist);
		mav.setViewName("msg/list");
		return mav;
	}
	
	@RequestMapping("/msg_insert_form.do")
	public String showMsginsert(){
		return "msg/insert";
	}
	@RequestMapping("/msg_insert.do")
	public ModelAndView runMsgInsert(HttpServletRequest request,HttpSession session,
			@ModelAttribute("dto") TestDTO dto){
		ModelAndView mav = new ModelAndView();
		//String[] word=dto.getMsg_content().split(" ");
		int user_num=(int)session.getAttribute("user_num");
		String content=dto.getMsg_content();
		System.out.println(content);
		List<String> badword= wdao.selectAll();
		for(int i=0; i<badword.size(); i++){
			int spot=content.indexOf(badword.get(i));
			System.out.println("spot==>"+spot);
			if(spot==0){
				System.out.println("sp==0.");
				break;
			}else if(i==badword.size()-1&spot==-1){
				System.out.println("spot_size.");
				dao.msg_insert(dto);
				addao.insertVisits("0");
				break;
			}
		}		
		mav.setViewName("redirect:msglist.do");
		return mav;
	}

	
	//���� - �޼���
	@RequestMapping("/msgAdmin.do")
	public ModelAndView msgAdmin(HttpServletRequest request,HttpSession session){
		ModelAndView mav = new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		}else{
			List<TestDTO> msglist_All =dao.getMsgList();
			System.out.println(">>"+msglist_All);
			int count = dao.count();
			System.out.println("count==>"+count);
			mav.addObject("count",count);
			mav.addObject("msglist_All",msglist_All);
			mav.setViewName("admin/msgAdmin");
		}
		return mav;
	}
	
	@RequestMapping("/msg_delete.do")
	public ModelAndView msgdelete(HttpServletRequest request, @RequestParam("msg_num") int msg_num){
		ModelAndView mav = new ModelAndView();
		dao.msg_delete(msg_num);
		return new ModelAndView("redirect:msgAdmin.do"); 
	}
	
	////���� ��Ӿ�
	@RequestMapping("/badword_form.do")
	public ModelAndView badword_form(HttpServletRequest request,HttpSession session){
		ModelAndView mav = new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		}else{
			List<BadWordsDTO> badwordlist =wdao.selectRealAll();
			int count=wdao.count();
			mav.addObject("count",count);
			mav.addObject("badwordlist",badwordlist);
			mav.setViewName("admin/badword");
		}
		return mav;
	}

	@RequestMapping("/badwords_delete.do")
	public ModelAndView badwords_delete(HttpServletRequest request, @RequestParam("num") int num){
		ModelAndView mav = new ModelAndView();
		wdao.delete(num);
		mav.setViewName("redirect:badword_form.do");
		return mav;
	}
	@RequestMapping("/badword_insert.do")
	public ModelAndView badwords_insert(HttpServletRequest request, @ModelAttribute("dto") BadWordsDTO dto){
		ModelAndView mav = new ModelAndView();
		String word=wdao.search(dto.getWord());
		if (word == null || word.equals("")) {
			System.out.println("insert.");
			wdao.insert(dto);
		}else{
			System.out.println("error");
		}
		
		mav.setViewName("redirect:badword_form.do");
		return mav;
	}
}




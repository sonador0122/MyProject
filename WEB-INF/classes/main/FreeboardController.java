package main;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.FreeboardDAO;
import dto.FreeboardDTO;

@Controller
public class FreeboardController {

	@Autowired
	@Qualifier("freedao")
	FreeboardDAO dao;

	@RequestMapping("/free_List.do")
	public ModelAndView free_list() {
		System.out.println("controller 들어오는군???");
		ModelAndView mav = new ModelAndView();
		List<FreeboardDTO> freelist = dao.free_list();
		System.out.println("컨트롤에서 freeboard list==>" + freelist.size());
		mav.addObject("freelist", freelist);
		mav.setViewName("free/list");
		return mav;

	}

	@RequestMapping("/free_view.do")
	public ModelAndView free_view(HttpServletRequest request,
			@RequestParam("free_no") int free_no) {
		System.out.println("free_view Controller");
		ModelAndView mav = new ModelAndView();
		dao.add_free_count(free_no);
		FreeboardDTO freeview = dao.free_view(free_no);
		mav.addObject("free", freeview);
		mav.setViewName("free/view");
		return mav;

	}

	@RequestMapping(method = RequestMethod.GET, value = "/free_insert.do")
	public ModelAndView free_insert_form() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("free/insert");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/free_insert.do")
	public ModelAndView free_insert(HttpServletRequest request,
			@ModelAttribute("free") FreeboardDTO free) throws Exception {
		System.out.println("hi?");
		MultipartFile uploadfile = free.getFree_uploadfile();
		ModelAndView mav = new ModelAndView();
		String fileName = null;
		float filesize;
		int free_no;
		if (uploadfile != null) {
			fileName = uploadfile.getOriginalFilename();
			filesize = (float) uploadfile.getSize();
			free.setFree_filename(fileName);
			try {
				File file = new File("C:/upload/" + fileName);
				uploadfile.transferTo(file);
				free.setFree_filename(fileName);
				free.setFree_filesize(filesize);
				free.setFree_uploadfile(null);
				System.out.println("dto=" + free.toString());
				dao.free_insert(free);
				System.out.println("controller로 리턴");
				//free_no = dao.found_free_no();
				//mav.addObject("free_no", free_no);
				//mav.setViewName("free/view");
				mav.setViewName("redirect:free_List.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			//mav.setViewName("redirect:free_List.do");
		}
		return mav;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/free_delete.do")
	public ModelAndView free_delete_form(HttpServletRequest request,
			HttpSession session, @RequestParam("free_no") int free_no) {
		session.setAttribute("count", 0);
		ModelAndView mav = new ModelAndView();
		mav.addObject("free_no", free_no);
		mav.setViewName("free/delete");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/free_delete.do")
	public ModelAndView free_delete(HttpServletRequest request,
			HttpSession session, @ModelAttribute("free") FreeboardDTO free) {
		ModelAndView mav = new ModelAndView();
		int count = (int) session.getAttribute("count");
		String DB_free_password = dao.found_password(free.getFree_no());

		if ((free.getFree_password()).equals(DB_free_password)) {
			dao.free_delete(free);
			mav.setViewName("free/list");
		} else {
			mav.addObject("free_no", free.getFree_no());
			session.setAttribute("count", count + 1);
			mav.setViewName("free/alert");
		}
		return mav;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/free_down.do")
	public ModelAndView download(HttpServletRequest request) throws Exception {
		File downloadFile = new File("C:/upload/"
				+ request.getParameter("free_filename"));
		return new ModelAndView("downloadView", "downloadFile", downloadFile);

	}

	@RequestMapping(method = RequestMethod.GET, value = "/free_modify_01.do")
	public ModelAndView free_modify01(HttpServletRequest request,
			HttpSession session, @RequestParam("free_no") int free_no) {
		session.setAttribute("count", 0);
		ModelAndView mav = new ModelAndView();
		mav.addObject("free_no", free_no);
		mav.setViewName("free/modify01");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/free_modify_01.do")
	public ModelAndView free_modify01_result(HttpServletRequest request,
			HttpSession session, @ModelAttribute("free") FreeboardDTO free) {
		System.out.println("Hello????");
		ModelAndView mav = new ModelAndView();
		int count = (int) session.getAttribute("count");
		String DB_free_password = dao.found_password(free.getFree_no());

		if ((free.getFree_password()).equals(DB_free_password)) {
			System.out.println("Hello????????");
			FreeboardDTO free1 = dao.free_modify_select(free);
			mav.addObject("free", free1);
			mav.setViewName("free/modify02");
		} else {
			mav.addObject("free_no", free.getFree_no());
			session.setAttribute("count", count + 1);
			mav.setViewName("free/alert01");
		}
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/free_modify02.do")
	public ModelAndView free_modify02(HttpServletRequest request,
			@ModelAttribute("free") FreeboardDTO free) {
		ModelAndView mav = new ModelAndView();
		free.toString();
		dao.free_modify(free);
		mav.setViewName("redirect:free_List.do");

		return mav;
	}
}

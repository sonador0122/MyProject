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

import dao.VideoDAO;
import dto.VideoDTO;
import dto.supportRegDTO;

@Controller
public class VideoController {
	@Autowired
	@Qualifier("videodao")
	VideoDAO dao;

	@RequestMapping("/video_insert.do")
	public ModelAndView runInsert(@ModelAttribute("video") VideoDTO video) {
		dao.insert(video);
		return new ModelAndView("redirect:vdoAdmin.do");
	}

	@RequestMapping("video_insertview.do")
	public String viewVideoInsert() {
		return "video_register";
	}

	@RequestMapping("/video_list.do")
	public ModelAndView videoormlist() {
		System.out.println("==============video_list.do============");
		List<VideoDTO> videoList = dao.getVideoList();
		System.out.println("** videoList >>" + videoList.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("videoList", videoList);
		mav.setViewName("video_view");
		return mav;
	}

	@RequestMapping("video_updateview.do")
	public ModelAndView viewVideoUpdate(
			@RequestParam("video_no") String video_no) {
		VideoDTO select = dao.select(video_no);
		ModelAndView mav = new ModelAndView();
		mav.addObject("videoSelect", select);
		mav.setViewName("video_update");
		return mav;

	}

	@RequestMapping("/video_update.do")
	public ModelAndView runUpdate(@ModelAttribute("video") VideoDTO video) {
		dao.update(video);

		return new ModelAndView("redirect:video_list.do");
	}

	@RequestMapping("/video_delete.do")
	public ModelAndView rundelete(@RequestParam("titles") String titles) {
		dao.delete(titles);
		return new ModelAndView("redirect:vdoAdmin.do");
	}

	/* 어드민 - 비디오 */
	@RequestMapping("/vdoAdmin.do")
	public ModelAndView vdoAdmin(HttpServletRequest request,
			HttpSession session, @ModelAttribute("spt") supportRegDTO spt) {
		System.out.println("==============svdoAdmin.do============");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			List<VideoDTO> videoList = dao.getVideoList();
			int vdoListSize = videoList.size();
			System.out.println("**등록된 갯수>>>>>" + videoList.size());
			mav.addObject("videoList", videoList);
			mav.setViewName("admin/vdoAdmin"); // 타일즈에 정의 해놓은 화면으로
		}
		return mav;

	}

	@RequestMapping("/vdo_chkDel.do")
	public ModelAndView update_stateDeposit(HttpServletRequest request,
			@ModelAttribute("spt") supportRegDTO spt) {
		System.out.println("==============vdo_chkDel.do============");
		String[] param = request.getParameterValues("vdoNo");
		dao.setState(param);
		return new ModelAndView("redirect:vdoAdmin.do");
	}
}

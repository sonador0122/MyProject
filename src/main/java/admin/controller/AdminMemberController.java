package admin.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.AdminMemberDAO;
import dto.AdminMemberDTO;
import dto.ConnectManageDTO;

@Controller
public class AdminMemberController {

	@Autowired
	@Qualifier("admindao")
	AdminMemberDAO dao;

	@RequestMapping("/adminmember.do")
	public ModelAndView content(HttpServletRequest request, HttpSession session) {
		System.out.println("-------------Admin Member");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			// 현재 sns별 총 인원 통계

			
			int facebookmember = dao.getFacebookMemberCount();
			int twittermember = dao.getTwitterMemberCount();
			int usermember = dao.getUserMemberCount();
			int totalmember = facebookmember+twittermember+usermember;

			double facebookpercentage1 = (facebookmember * 100 / (double) totalmember);
			double twitterpercentage1 = (twittermember * 100 / (double) totalmember);
			double userpercentage1 = (usermember * 100 / (double) totalmember);

			String facebookpercentage = String.format("%.2f",
					facebookpercentage1);
			String twitterpercentage = String
					.format("%.2f", twitterpercentage1);
			String userpercentage = String.format("%.2f", userpercentage1);

			// 회원 목록

			List<AdminMemberDTO> member_list = dao.getMemberList();

			mav.addObject("facebookpercentage", facebookpercentage);
			mav.addObject("twitterpercentage", twitterpercentage);
			mav.addObject("userpercentage", userpercentage);
			mav.addObject("member_list", member_list);

			System.out.println("facebookpercentage : " + facebookpercentage);
			System.out.println("twitterpercentage : " + twitterpercentage);
			System.out.println("userpercentage : " + userpercentage);

			mav.setViewName("admin/member");
		}

		return mav;
	}

	@RequestMapping("/adminvisits.do")
	public ModelAndView visits(HttpServletRequest request, HttpSession session) {
		System.out.println("-------------Admin visits");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			// 일일 방문자수 통계

			List<ConnectManageDTO> facebooktoday = dao.getFacebookToday();
			List<ConnectManageDTO> twittertoday = dao.getTwitterToday();
			List<ConnectManageDTO> usertoday = dao.getUserToday();
			List<ConnectManageDTO> usermonthlycount = dao.getUserMonthlyCount();

			int facebooksize = facebooktoday.size();
			int twittersize = twittertoday.size();
			int usersize = usertoday.size();

			System.out.println("facebooksize" + facebooksize);
			System.out.println("twittersize" + twittersize);
			System.out.println("usersize" + usersize);

			// 날짜를 비교하기 위해 String으로 변환
			Calendar today = Calendar.getInstance();
			String todayyear = today.get(Calendar.YEAR) + "";
			String todaymonth = "";
			String todaydate = "";
			if ((today.get(Calendar.MONTH) + 1) < 10) {
				todaymonth = "0" + (today.get(Calendar.MONTH) + 1) + "";
			} else {
				todaymonth = (today.get(Calendar.MONTH) + 1) + "";
			}

			if (today.get(Calendar.DATE) < 10) {
				todaydate = "0" + today.get(Calendar.DATE) + "";
			} else {
				todaydate = today.get(Calendar.DATE) + "";
			}
			// System.out.println(todayyear+"-"+todaymonth+"-"+todaydate);

			if (facebooksize < 8) {

				for (int i = facebooksize; i < 8; i++) {
					facebooktoday.add(new ConnectManageDTO("2014-15-15", 0));
				}
			}

			if (twittersize < 8) {
				for (int i = twittersize; i < 8; i++) {
					twittertoday.add(new ConnectManageDTO("2014-15-15", 0));
				}
			}

			if (usersize < 8) {
				for (int i = usersize; i < 8; i++) {
					usertoday.add(new ConnectManageDTO("2014-15-15", 0));
				}
			}

			for (int i = 0; i < facebooksize; i++) {
				System.out.println(facebooktoday.get(i).getConnectdate() + "-"
						+ i);
			}
			// 오늘 facebook, twitter, user가 접속하지 않았을 때, 방문자 수 0으로 초기화


			if (!facebooktoday.get(0).getConnectdate().substring(0, 10)
					.equals(todayyear + "-" + todaymonth + "-" + todaydate)) {
				facebooktoday.add(new ConnectManageDTO(facebooktoday.get(
						facebooksize - 1).getConnectdate(), facebooktoday.get(
						facebooksize - 1).getSns_user_count()));

				for (int i = facebooksize; i > 0; i--) {
					facebooktoday.get(i).setConnectdate(
							facebooktoday.get(i - 1).getConnectdate());
					facebooktoday.get(i).setSns_user_count(
							facebooktoday.get(i - 1).getSns_user_count());
				}

				facebooktoday.get(0).setConnectdate(
						todayyear + "-" + todaymonth + "-" + todaydate);
				facebooktoday.get(0).setSns_user_count(0);
			}

			if (!twittertoday.get(0).getConnectdate().substring(0, 10)
					.equals(todayyear + "-" + todaymonth + "-" + todaydate)) {
				twittertoday.add(new ConnectManageDTO(twittertoday.get(
						twittersize - 1).getConnectdate(), twittertoday.get(
						twittersize - 1).getSns_user_count()));
				
				for (int i = twittersize; i > 0; i--) {
					twittertoday.get(i).setConnectdate(
							twittertoday.get(i - 1).getConnectdate());
					twittertoday.get(i).setSns_user_count(
							twittertoday.get(i - 1).getSns_user_count());
				}

				twittertoday.get(0).setConnectdate(
						todayyear + "-" + todaymonth + "-" + todaydate);
				twittertoday.get(0).setSns_user_count(0);
			}

			if (!usertoday.get(0).getConnectdate().substring(0, 10)
					.equals(todayyear + "-" + todaymonth + "-" + todaydate)) {
				// usertoday.add(new ConnectManageDTO(usertoday.get(usersize -
				// 1).getConnectdate(), facebooktoday.get(usersize -
				// 1).getSns_user_count()));

				for (int i = usersize; i > 0; i--) {
					usertoday.get(i).setConnectdate(
							usertoday.get(i - 1).getConnectdate());
					usertoday.get(i).setSns_user_count(
							usertoday.get(i - 1).getSns_user_count());
				}

				usertoday.get(0).setConnectdate(
						todayyear + "-" + todaymonth + "-" + todaydate);
				usertoday.get(0).setSns_user_count(0);
			}

			for (int i = 0; i < 8; i++) {
				System.out.println(twittertoday.get(i).getSns_user_count());
			}

			mav.addObject("facebooktoday", facebooktoday);
			mav.addObject("twittertoday", twittertoday);
			mav.addObject("usertoday", usertoday);
			mav.addObject("usermonthlycount", usermonthlycount);

			mav.setViewName("admin/visits");
		}
		return mav;
	}

	@RequestMapping("/member_delete.do")
	public ModelAndView memberDelete(@RequestParam("user_num") String user_num) {
		System.out.println(user_num);
		dao.getDeleteMember(user_num);
		return new ModelAndView("redirect:adminmember.do");
	}

}

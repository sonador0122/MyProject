package main;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.security.MessageDigest;

import javax.servlet.ServletException;
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
import org.springframework.web.servlet.ModelAndView;

import dao.AdminMemberDAO;
import dto.AdminMemberDTO;
import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.FacebookFactory;
import facebook4j.Media;
import facebook4j.PagePhotoUpdate;

@Controller
public class FacebookController {

	@Autowired
	@Qualifier("admindao")
	AdminMemberDAO dao;

	@RequestMapping(value = "/facebooksignin.do", method = RequestMethod.GET)
	public ModelAndView SignInServlet(HttpSession session,
			HttpServletRequest request) throws IOException {
	
		Facebook facebook = new FacebookFactory().getInstance();
		//RequestToken requestToken = null;
		//requestToken = facebook.getOAuthAccessToken();
		
		session.setAttribute("facebook", facebook);

		StringBuffer callbackURL = request.getRequestURL();
		int index = callbackURL.lastIndexOf("/");
		callbackURL.replace(index, callbackURL.length(), "").append(
				"/callback.do");
		System.out.println(callbackURL);
		System.out.println(facebook.getOAuthAuthorizationURL(callbackURL
				.toString()));
		return new ModelAndView("redirect:"
				+ facebook.getOAuthAuthorizationURL(callbackURL.toString()));
	}
	
	

	@RequestMapping(value = "/callback.do", method = RequestMethod.GET)
	public ModelAndView Callback(HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam("code") String oauthCode, @ModelAttribute("addto")AdminMemberDTO member) throws IOException,
			FacebookException {
		
		Facebook facebook = (Facebook) session.getAttribute("facebook");

		try {
			facebook.getOAuthAccessToken(oauthCode);
		} catch (FacebookException e) {
			response.getWriter().print(e);
		}
		
		/*
		 *  email = tester@facebook.com;
		 *  username = tester;
		 *  userid   = tester;
		 */
		
		
		String snstype = "f";
		
		String email = facebook.getMe().getEmail();
		String gender = facebook.getMe().getGender();
		String username = facebook.getMe().getName();
		String userid = facebook.getMe().getId();
		String img = facebook.getPhotoURL(facebook.getMe().getId()).toString();
		
		String user_num = dao.searchMember(userid);
		member.setEmail(email);
		member.setUsername(username);
		member.setUserid(userid);
		member.setImg(img);
		member.setSnstype(snstype);
		
		System.out.println(member.toString());
		
		if(user_num != null){
			System.out.println(user_num);	
		}
		else{
			System.out.println(user_num);
			
			dao.insertMember(member);
		}
		
		user_num = dao.searchMember(userid);
		
		boolean conf = dao.searchVisits(user_num);
		
		if(!conf){
			dao.insertVisits(user_num);
		}
		
		System.out.println(email);
		System.out.println(gender);
		System.out.println(username);
		System.out.println(img);
		
		//System.out.println(country);
		return new ModelAndView("redirect:index.do");
	}

	@RequestMapping("/facebooklogout.do")
	public ModelAndView logOut(HttpSession session, HttpServletRequest request)
			throws FacebookException, ServletException {
		Facebook facebook = (Facebook) session.getAttribute("facebook");
		String accessToken = "";
		try {
			accessToken = facebook.getOAuthAccessToken().getToken();
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
		session.invalidate();

		// Log Out of the Facebook
		StringBuffer next = request.getRequestURL();
		int index = next.lastIndexOf("/");
		next.replace(index + 1, next.length(), "");
		System.out.println(next.toString());

		return new ModelAndView(
				"redirect:http://www.facebook.com/logout.php?next="
						+ next.toString() + "index.do&access_token="
						+ accessToken);
	}
	@RequestMapping(value = "/feedtest2.do", method = RequestMethod.POST)
	protected ModelAndView feedTest2(HttpSession session, HttpServletRequest request) 
			throws ServletException, IOException, FacebookException, Exception {
		request.setCharacterEncoding("UTF-8");
		Facebook facebook = (Facebook) session.getAttribute("facebook");
		
		StringBuffer callbackURL = request.getRequestURL();
		int index = callbackURL.lastIndexOf("/");
		callbackURL.replace(index, callbackURL.length(), "").append("/index.do");
		
		URL url = new URL(callbackURL.toString());
		
		try {
			String message = facebook.getMe().getName()+" welcome.";
			System.out.println("���⼭���;ȵǴ°Ű�����");
			File file = new File("c:/java/stsprojectwork/EdenProject/src/main/java/classicganji.jpg");
			PagePhotoUpdate photo = new PagePhotoUpdate(new Media(file));
			//System.out.println(facebook.postPagePhoto(photo));
			//facebook.postPagePhoto(photo);
			//facebook.postLink(url, message);
			String id = facebook.getId();
            
			byte[] input = new byte[0];
			MessageDigest digest = MessageDigest.getInstance("SHA-1");
		    digest.reset();
		    digest.digest(id.getBytes("UTF-8"));

		    
			facebook.postEventPhoto(id, new Media(file), message);
			
			//facebook.postStatusMessage(message);
		} catch (FacebookException e) {
			throw new ServletException(e);
		}
		return new ModelAndView("redirect:index.do");
	}
}

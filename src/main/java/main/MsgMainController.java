package main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MsgMainController {	
	@RequestMapping("/index1.do")
	public String showMsg(HttpServletRequest request){
		HttpSession session = request.getSession();
		String userToken = (String)session.getAttribute("userToken");
		String userTokenSecret = (String)session.getAttribute("userTokenSecret");
		String oauth_token=request.getParameter("oauth_token");
		String oauth_verifier=request.getParameter("oauth_verifier");
		session.setAttribute("userToken", userToken);
		
		session.setAttribute("userTokenSecret", userTokenSecret);
		request.setAttribute("oauth_token", oauth_token);
		request.setAttribute("oauth_verifier", oauth_verifier);
		return "index";
	}
	public String showMsg(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userToken = (String)session.getAttribute("userToken");
		String userTokenSecret = (String)session.getAttribute("userTokenSecret");
		String oauth_token=request.getParameter("oauth_token");
		String oauth_verifier=request.getParameter("oauth_verifier");
		session.setAttribute("userToken", userToken);
		
		session.setAttribute("userTokenSecret", userTokenSecret);
		Cookie[] cookies = request.getCookies();
		String cook="";
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				cook=cookies[i].getValue();
			}
		}
		
		
		Cookie c=new Cookie("userToken",userToken);
		c.setMaxAge(60*60*24*365);           
		c.setPath("/"); 
		response.addCookie(c);
		//System.out.println("cook=>"+cook);
		request.setAttribute("oauth_token", oauth_token);
		request.setAttribute("oauth_verifier", oauth_verifier);
	//	request.setAttribute("jsessionid", cook);
		return "index";
	}
}

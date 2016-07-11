package main;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
import dao.AdminMemberDAO;
import dao.MemberDAO;
import dto.MemberDTO;

@Controller
public class twitter4jTest01 {
	private Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
	@Qualifier("member")
	MemberDAO dao;
	@Autowired
	@Qualifier("admindao")
	AdminMemberDAO admin;
	 public final String CONSUMER_KEY = "gt4NgKeJp1KkGILFbaAqu52Pc";
	 public final String CONSUMER_SECRET =
	 "z2rtrvAs7GsnUKSrE24cizRc0sHiYhz11NDMpJ5xmBpIC7ZKLj";

	
	@RequestMapping("/twitter.do")
	public String showtwitter() {
		return "twitter";
	}

	@RequestMapping("/twitter1.do")
	public ModelAndView twitter(HttpSession session) throws IOException,
			ServletException, TwitterException {
		System.out.println("���� �Դ�?");

		Twitter twitter = new TwitterFactory().getInstance();
		RequestToken requestToken = null;
		requestToken = twitter.getOAuthRequestToken();
		// �������� 2�ܰ迡�� Secret���� ���ϱ� ���� session�� token�� ���
		session.setAttribute("twitter", twitter);
		session.setAttribute("requestToken", requestToken);
		

		session.setAttribute("requestTokenSecret",
				requestToken.getTokenSecret());
		System.out.println("requestToken=>" + requestToken.getToken());
		System.out.println("requestToken.getAuthorizationURL=>"
				+ requestToken.getAuthorizationURL());
		session.setAttribute("requestToken.getAuthorizationURL",
				requestToken.getAuthorizationURL());
		// Ʈ������ ������������ �����̷��� - �������� 2�ܰ迡�� ���������ϸ� �ݹ��������� �����̷���
		
		return new ModelAndView("redirect:"
				+ requestToken.getAuthorizationURL());

	}

	@RequestMapping("/twittercallback.do")
	public ModelAndView callback(HttpServletRequest request, ModelMap model,
			HttpSession session) throws IOException, ServletException,
			TwitterException {
		try {
			System.out.println("twittercallback.do���Դ�.");

			Twitter twitter = new TwitterFactory().getInstance();
			AccessToken accessToken = null;
			RequestToken requestToken = (RequestToken) request.getSession()
					.getAttribute("requestToken");
			String oauthToken = request.getParameter("oauth_token").toString();
			
			System.out.println("oauthToken===>" + oauthToken);
			String tokenSecret = (String) session
					.getAttribute("requestTokenSecret");

			System.out.println("�ݹ� ��ū  :: " + requestToken);
			session.setAttribute("requestToken", requestToken);
			System.out.println("�ݹ� ��ū��ũ��  ::  " + tokenSecret);
			String oauth_verifier = request.getParameter("oauth_verifier");

			accessToken = twitter.getOAuthAccessToken(requestToken,
					oauth_verifier);
			twitter.setOAuthAccessToken(accessToken);

			session.setAttribute("aToken", accessToken.getToken()); // �����е�񿡳���
			session.setAttribute("accessToken", accessToken);
			session.setAttribute("aTokenSecret", accessToken.getTokenSecret()); // �����е�񿡳���
			request.setAttribute("oauthToken", oauthToken);
			request.setAttribute("oauthVerifier", oauth_verifier);			
			session.setAttribute("oauthverifier", oauth_verifier);
			System.out.println("��������ū :: " + accessToken.getToken());
			
			System.out.println("��������ū :: " + twitter.getOAuthAccessToken());
			System.out.println("��������ū��ũ�� :: " + accessToken.getTokenSecret());
			User statuses = twitter.getUserTimeline().get(0).getUser();
			System.out.println(statuses);
			String id=twitter.showUser(accessToken.getScreenName()).getId()+"";
			System.out.println("Ʈ���� id===>"+id);
			String name=twitter.showUser(accessToken.getScreenName()).getScreenName().toString();
			System.out.println("Ʈ���� �̸�==>"+name);
			String img=twitter.showUser(accessToken.getScreenName()).getOriginalProfileImageURL().toString();
			int user_num=0;
			if(id.equals(dao.member_userid(id))){
				System.out.println("�� �̹� ��ϵǾ� �ִ�.");
				
			}else{
				MemberDTO dto=new MemberDTO("t",id,name,img);
				dao.member_insert(dto);
				System.out.println("insert����????");
				
			}
			MemberDTO dto = new MemberDTO("t",id);
			user_num=dao.member_user_num(dto);
			System.out.println("user_num===>"+user_num);
			String struser_num=Integer.toString(user_num);
			System.out.println("struser_num=="+struser_num);
			boolean conf = admin.searchVisits(struser_num);
			
			if(!conf){
				admin.insertVisits(struser_num);
				System.out.println("���� ����?");
			}
			
			session.setAttribute("user_num", user_num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:index.do");
	}

	@RequestMapping("/sign.do")
	public ModelAndView showsign() {
		return new ModelAndView("test/sign");
	}

	@RequestMapping("/twitterlogout.do")
	public ModelAndView logout(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		Twitter twitter = (Twitter)request.getSession().getAttribute("twitter");
		twitter.setOAuthAccessToken(null);
		request.getSession().invalidate();
		mav.setViewName("redirect:index.do");
		return mav;
	}
	
	@RequestMapping("/twitterstatus.do")
	public ModelAndView status(HttpServletRequest request, ModelMap model,
			HttpSession session)throws IOException, ServletException,
			TwitterException {
		

		Twitter twitter1=(Twitter)request.getSession().getAttribute("twitter");
		Status status = null;
		AccessToken access=(AccessToken)session.getAttribute("accessToken");
		twitter1.setOAuthAccessToken(access);
		
		try {
			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
			Date currentTime = new Date ( );
			String mTime = mSimpleDateFormat.format ( currentTime );
			System.out.println ( mTime );
			
			status = twitter1.updateStatus("http://localhost:8088/Eden/index.do ["+mTime+"] Eden�� ������ ��α� �����մϴ�");// ����ٰ� ������
																// Ʈ���Ϳ� ����
																// �����͸�
																// �����Ѵ�.
			System.out.println("Ʈ������");

		} catch (TwitterException e) {
			System.out.println("���� :: " + e);
			e.printStackTrace();
		}

		return new ModelAndView("redirect:side_support.do");
	}
}

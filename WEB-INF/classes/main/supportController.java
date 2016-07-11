package main;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.auth.AccessToken;
import dao.supportDAO;
import dto.supportRegDTO;
import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.Media;
import facebook4j.PagePhotoUpdate;

@Controller
public class supportController {

	@Autowired
	@Qualifier("sptDAO")
	supportDAO dao;

	/*
	 * @RequestMapping("/supportReg.do") public ModelAndView
	 * insert_support(HttpServletRequest request, @ModelAttribute("spt")
	 * supportRegDTO spt){
	 * System.out.println("==============supportReg.do============");
	 * dao.sptInsert(spt); //dto���� ������ ModelAndView mav = new ModelAndView();
	 * mav.setViewName("sptResult"); //Ÿ��� ���� �س��� ȭ������ return mav; }
	 */

	@RequestMapping("/supportReg.do")
	public ModelAndView insert_Support(HttpServletRequest request,
			@ModelAttribute("spt") supportRegDTO spt, HttpSession session)
			throws ServletException, IOException, FacebookException {
		System.out.println("==============supportReg.do============");
		Twitter twitter = (Twitter) session.getAttribute("twitter");
		Facebook facebook = (Facebook) session.getAttribute("facebook");
		request.setCharacterEncoding("UTF-8");
		dao.sptInsert(spt); // dto���� ������
		int totalamount = dao.getTotalAmount();
		if(facebook!=null||twitter!=null){
			System.out.println("����ƴ�");
		}else{
			dao.insertVisits("0");
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("totalamount", totalamount);
		mav.setViewName("sptResult"); // Ÿ��� ���� �س��� ȭ������
		return mav;

	}

	@RequestMapping("/writefeed.do")
	public ModelAndView insert_feed(HttpServletRequest request,
			@ModelAttribute("spt") supportRegDTO spt, HttpSession session)
			throws ServletException, IOException, FacebookException {
		Twitter twitter = (Twitter) session.getAttribute("twitter");
		Facebook facebook = (Facebook) session.getAttribute("facebook");
		if (twitter != null) {
			Twitter twitter1 = (Twitter) request.getSession().getAttribute(
					"twitter");
			Status status = null;
			AccessToken access = (AccessToken) session
					.getAttribute("accessToken");
			twitter1.setOAuthAccessToken(access);
			try {
				SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat(
						"yyyy.MM.dd HH:mm:ss", Locale.KOREA);
				Date currentTime = new Date();
				String mTime = mSimpleDateFormat.format(currentTime);
				status = twitter1
						.updateStatus("http://localhost:8088/Eden/index.do ["
								+ mTime + "] Eden�� ������ ��α� �����մϴ�");// ����ٰ� ������
				System.out.println("Ʈ������");

			} catch (TwitterException e) {
				System.out.println("���� :: " + e);
				e.printStackTrace();
			}

		} else if (facebook != null) {

			StringBuffer callbackURL = request.getRequestURL();
			int index = callbackURL.lastIndexOf("/");
			callbackURL.replace(index, callbackURL.length(), "").append(
					"/index.do");
			try {
				String message = facebook.getMe().getName() + "님의 후원에 감사드립니다.";
				
				try {
					Process process;
					String cmd;
					File file = new File("C:/java/Stswork/Eden/src/main/java/logo.jpg");
					
				    cmd = new String( "cmd /c start " + file);
					process = Runtime.getRuntime().exec(cmd);
					PagePhotoUpdate photo = new PagePhotoUpdate(new Media(file));
					String id = facebook.getId();
					facebook.postEventPhoto(id, new Media(file), message);
				
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
			
					e.printStackTrace();
				} 
					
				// facebook.postStatusMessage(message);
			} catch (FacebookException e) {
				throw new ServletException(e);
			}
			
		}
		return new ModelAndView("redirect:side_support.do");

	}

	@RequestMapping("/sptInfo.do")
	public ModelAndView select_supportInfoAll(HttpServletRequest request,
			HttpSession session, @ModelAttribute("spt") supportRegDTO spt) {
		System.out.println("==============sptInfo.do============");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			List<supportRegDTO> sptlist = dao.getSptList();
			mav.addObject("sptlist", sptlist);
			mav.setViewName("sptList");
		}
		return mav;
	}

	/*
	 * @RequestMapping("/chckAmount.do") public ModelAndView
	 * select_totalAmount(HttpServletRequest request, @ModelAttribute("spt")
	 * supportRegDTO spt){
	 * System.out.println("==============chckAmonut.do============"); int
	 * totalAmount =dao.getTotalAmount(); System.out.println(">>"+totalAmount);
	 * ModelAndView mav = new ModelAndView(); mav.addObject("totalAmount",
	 * totalAmount); mav.setViewName("support"); return mav; }
	 */
	@RequestMapping("/chckDeposit.do")
	public ModelAndView update_stateDeposit(HttpServletRequest request,
			@ModelAttribute("spt") supportRegDTO spt) {
		System.out.println("==============chckDeposit.do============");
		String[] param = request.getParameterValues("supportCode");
		dao.setState(param);
		return new ModelAndView("redirect:sptInfo.do");
	}

	@RequestMapping("/dltRecode.do")
	public ModelAndView delete_supportInfo(
			@RequestParam("code") String supportCode) throws Exception {
		System.out.println("==============dltInfo.do============");
		dao.dltInfo(supportCode);
		return new ModelAndView("redirect:sptInfo.do");
	}

	/* ���� - �Ŀ� */
	@RequestMapping("/sptStats.do")
	public ModelAndView sptStats(HttpServletRequest request,
			HttpSession session, @ModelAttribute("spt") supportRegDTO spt) throws Exception {
		
		KeyGenerator keygenerator = KeyGenerator.getInstance("DES");
	    SecretKey myDesKey = keygenerator.generateKey();
	    
	    Cipher desCipher;

	    
		System.out.println("==============chckAmonut.do============");
		ModelAndView mav = new ModelAndView();
		String userid = (String) session.getAttribute("userid");
		if (userid == null || userid.equals("")) {
			mav.setViewName("redirect:index.do");
		} else {
			int[] ainfA = new int[3];
			ainfA[0] = dao.getTotalAmount();
			System.out.println(">>tA : " + ainfA[0]);
			ainfA[1] = dao.getYdAmount();
			System.out.println(">>yA : " + ainfA[1]);
			ainfA[2] = dao.getWkAmount();
			System.out.println(">>wA : " + ainfA[2]);

			System.out.println("==============LoginTypeAmonut.do============");
			double[] lgA = dao.getLoginAmount(ainfA[0]);
			System.out.println(">> t : " + lgA[0] + ", f : " + lgA[1]
					+ ", b : " + lgA[2]);

			System.out.println("==============TodayInfo============");
			List<supportRegDTO> sptTodaylist = dao.getTodayInfo();
			System.out.println(">>" + sptTodaylist); // ������ jsp���� ��ٰ� �Ѹ���, �ԱݿϷ�
														// nullüũ

			System.out.println("==============QuarterAmount============");
			int[] qtA = dao.getQuarterAmount();
			System.out.println(">>" + qtA[0] + "," + qtA[1] + "," + qtA[2]
					+ "," + qtA[3]);
	
			desCipher = Cipher.getInstance("DES");
			 desCipher.init(Cipher.ENCRYPT_MODE, myDesKey);
			byte[] qTb = integersToBytes(dao.getQuarterAmount());
			 
			 desCipher.update(qTb);

			 
			 
			System.out.println("==============getMonthlyMax============");
			List<supportRegDTO> MonthlyMax = dao.getMonthlyMax();
			System.out.println(">>" + MonthlyMax);
			
			String[] typename = {"Twitter","Facebook","Unknown"};
			
			mav.addObject("typename", typename);
			mav.addObject("totalAmount", ainfA[0]);
			mav.addObject("amountInfo", ainfA);
			mav.addObject("LoginAmount", lgA);
			mav.addObject("sptTodaylist", sptTodaylist);
			mav.addObject("quarterAmount", qtA);
			mav.addObject("MonthlyMax", MonthlyMax);

			mav.setViewName("sptStats"); // Ÿ��� ���� �س��� ȭ������
		}
		return mav;
	}
	
	public byte[] integersToBytes(int[] values) throws Exception
	{
	   ByteArrayOutputStream baos = new ByteArrayOutputStream();
	   DataOutputStream dos = new DataOutputStream(baos);
	   for(int i=0; i < values.length; ++i)
	   {
	        dos.writeInt(values[i]);
	   }

	   return baos.toByteArray();
	}

	
	@RequestMapping("/spt.do")
	public String showSptPage(){
		return "sptDo";
	}
	
	@RequestMapping("/spt2.do")
	public String showSpt2Page(){
		return "sptDo2";
	}

}

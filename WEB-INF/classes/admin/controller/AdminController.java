package admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.CommonUtil;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class AdminController {
	
	@RequestMapping("/admin.do")
	public String test() {		
		
		return "/admin";
	}
	
	@RequestMapping(value="adminQuery.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminQuery(HttpServletRequest request){
		StringBuffer buffer=new StringBuffer();
		String name=request.getParameter("name");
		buffer.append("실행결과: ");
		CommonUtil util=new CommonUtil();
	    buffer.append(util.readXML(name));
        return buffer.toString();
		
	}
	
	@RequestMapping(value="adminQuertView.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminQuertView(HttpServletRequest request, HttpSession session){
		StringBuffer buffer=new StringBuffer();	
		String data=request.getParameter("data");

		// 허용된 명령어 목록을 사용해서 입력값을 체크한다.
		String[] allowCommand = {"type","dir"};
		int index=-1;
		// 요청값이 정수 데이터가 아닌경우 잘못된 요청으로 처리
		try {
	    	index=Integer.parseInt(data);
		}catch(NumberFormatException e) {
			buffer.append("잘못된 요청입니다.");
			return buffer.toString();
		}
		// 요청값이 allowCommand 범위가 아닌경우 잘못된 요청으로 처리
		if ( index >= 0 && index < 2 ) {
		    data=allowCommand[index];
		} else {
			buffer.append("잘못된 요청입니다.");
			return buffer.toString();
		}
		
	    if ( data != null  && data.equals("type")) {
	    		data=data+" "+
	    	            request.getSession().getServletContext().getRealPath("/")+
	    	            "file1.txt"; 
	    		System.out.println(data);
	    }
    	
		Process process;
		String osName = System.getProperty("os.name");
		String[] cmd;

		if(osName.toLowerCase().startsWith("window")) {
		    cmd = new String[] { "cmd.exe","/c",data };
		    for( String s : cmd)
		       System.out.print(s+" ");
		} else {
		    cmd = new String[] { "/bin/sh",data };
		}

		try {
			process = Runtime.getRuntime().exec(cmd);
			InputStream in = process.getInputStream(); 
			Scanner s = new Scanner(in,"EUC-KR");
			buffer.append("실행결과: <br/>");
			while(s.hasNextLine() == true) {
			    buffer.append(s.nextLine()+"<br/>");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			buffer.append("실행오류발생");
			e.printStackTrace();
		} 
			return buffer.toString();

	}
	

	
	
	@RequestMapping(value="adminPostViewer.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminPostViewer(HttpServletRequest request) {
		StringBuffer buffer=new StringBuffer();
		String data=request.getParameter("data");
		try {
			Pattern p=Pattern.compile("%(25)+3c",Pattern.CASE_INSENSITIVE);
			Matcher m=p.matcher(data);
			if ( m.find()) {
				buffer.append("잘못된 요청입니다.");
				return buffer.toString();
			}
			data=URLDecoder.decode(data, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        return buffer.toString();	
	}
	
	@RequestMapping(value="adminPostMultiViewer.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminPostMultiViewer(HttpServletRequest request) {
        HashMap<String,String> map = new HashMap<String,String>();
        map.put("1", "<script>alert('xss');</script>");
        map.put("2", "&lt;script&gt;alert('xss');&lt;/script&gt;");
		StringBuffer buffer=new StringBuffer();
		String data=request.getParameter("data");
		if ("1".equals(data)) {
			buffer.append(map.get("1"));
		}else if ( "2".equals(data)) {
			buffer.append(map.get("2"));
		} else {
			buffer.append("잘못된 요청입니다.");
		}
        return buffer.toString();	
	}
	

	
	@RequestMapping(value="adminLoginTest.do", method = RequestMethod.GET)
	@ResponseBody
	public String adminLoginTest(HttpServletRequest request){
		StringBuffer buffer=new StringBuffer();
		String id=request.getParameter("id");
		CommonUtil util=new CommonUtil();
		buffer.append(util.readDB2(id));
        return buffer.toString();
		
	}

	
	
	@RequestMapping(value="adminReceiveViewer.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminReceiveViewer(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer buffer=new StringBuffer();
		String data=request.getParameter("data");
		System.out.println("수신데이터: "+data);
		int size=Integer.parseInt(data);
		String[] strings = new String[size+1];
        strings[0]="hello";
        buffer.append(strings[0]+"  int overflow test");    
	    return buffer.toString();
	}
	
	@RequestMapping(value="adminSendViewer.do", method = RequestMethod.POST)
	@ResponseBody
	public String adminSendViewer(HttpServletRequest request,HttpServletResponse response){
		String url=request.getParameter("data");
		try {
			response.sendRedirect(url);
		} catch (IOException e) {
			return "redirect 테스트 오류";
		}
		return null;
	}
	
	
	    public static String[] aclData = {"",""};
	    
		@RequestMapping(value="adminAccessControl.do", method = RequestMethod.POST)
		@ResponseBody
		public String adminAccessControl(HttpServletRequest request,HttpServletResponse response){
			StringBuffer buffer=new StringBuffer();
			String name = request.getParameter("name");
			String action=request.getParameter("action");
			if( "view".equals(action)) {
				buffer.append("==> 사용자 정보조회<br/>");
			}else if( "modify".equals(action)) {
				aclData[1] = name;
				buffer.append("==> 사용자 정보수정<br/>");
			}else if ( "delete".equals(action)) {
				aclData[0]="";
				aclData[1]="";
				buffer.append("==> 사용자정보삭제<br/>");
			}else if ( "edit".equals(action)) {
				aclData[0]=name;
				buffer.append("==> 사용자정보생성<br/>");
			}	
		
			buffer.append("사용자명: "+aclData[0]+"<br/>");
			buffer.append("   전화번호: "+aclData[1]);
			return buffer.toString();
		}
		


}

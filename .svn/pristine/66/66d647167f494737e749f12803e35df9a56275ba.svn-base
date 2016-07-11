<%@page import="facebook4j.Facebook,twitter4j.Twitter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<%
	Facebook facebook = (Facebook) session.getAttribute("facebook");
	Twitter twitter = (Twitter) session.getAttribute("twitter");
	String userid = (String) session.getAttribute("userid");
	//int user_num=(Integer)session.getAttribute("user_num");
	//int user_num=0;
	if(facebook==null&twitter==null&userid==null){
		session.setAttribute("user_num", 0);
	}else{
		
	}

%>
<body>
	<%-- 1.세션값설정 (현재 설정 : T_11) / 
					<c:set var="ses_userNum" value="11" scope="session" /> 
					2.세션값출력 ::  <c:out value="${sessionScope.ses_userNum}" /> / <input type="hidden" value="${sessionScope.ses_userNum}" name="user_num"> --%>

	<!-- 	<h6><span class="label label-default" style="margin:0px;">login</span></h6>
			<h6><span class="label label-default" style="margin:0px;">logout</span></h6>
			<h6><span class="label label-default" style="margin:0px;">admin</span></h6>
			
				<div class="header">
	
	</div>
			 -->
		<ul style="margin: 0px; position:absolute; right: 0px; top:0px;">
			<%if(twitter==null&facebook==null&userid==null){ %>
			<li><a href="facebooksignin.do"><img src="/Eden/images/login1.jpg" id="f"></a></li>
				<li><a href="twitter1.do"><img src="/Eden/images/login2.jpg" id="t"></a></li>
				<li><a href="adminlogin_form.do">관리자 로그인</a></li>
			<%}else if(twitter!=null& facebook==null&userid==null){%>
				<li><a href="twitterlogout.do">트위터 로그아웃</a></li>
				<li><a href="header_myPage.do?user_num=${user_num}">내역확인 페이지 가기</a></li>
			<%}else if(facebook!=null&twitter==null&userid==null){%>
				<li><a href="facebooklogout.do">페이스북 로그아웃</a></li>
				<li><a href="header_myPage.do?user_num=${user_num}">내역확인 페이지 가기</a></li>
			<%}else if(facebook==null&twitter==null&userid!=null){%>
				<li><a href="adminlogout.do">관리자 로그아웃</a></li>
				<li><a href="adminindex.do">관리자 페이지 가기</a></li>
			<% } %>
		</ul>
	<br/>	
<hr />
	
</body>
</html>
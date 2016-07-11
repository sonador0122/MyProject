<%@page import="facebook4j.Facebook"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" charset="utf-8" href="g.css" />
<link rel="shortcut icon" href="favicon.ico" />
<meta name="verify-v1"
	content="BBkjRefRXlA3Tf6oGjfzboK8pfgijneuUKOlkodlLuU=" />
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="news.rss" />
<link rel="canonical"
	href="http://www.goat1000.com/tagcanvas-weighted.php" />

<!--[if lt IE 9]><![endif]-->
<script type="text/javascript" src="/Eden/common/js/excanvas.min.js"></script>
<script src="/Eden/common/js/tagcanvas.min.js" type="text/javascript"></script>

</head>
<body>
		<div align="right" style="float:right;  margin-bottom: 50px; margin-right: 0">
	<img src="/Eden/res/img/menubar/sptBar02.png" width="80%" align="right" >
			</div>
<script type="text/javascript" src="/Eden/res/js/swfobject.js"></script>

	<form name='thisForm' action="supportReg.do" method="POST">
		<script language="javascript" src="/Eden/res/js/viewTitle.js" type="text/javascript"></script>

<%
	String name =request.getParameter("Name");
	String Amount =request.getParameter("Amount");
	String supportType = request.getParameter("supportType");
	String supportType_NAME = "";
	String paymentType = request.getParameter("paymentType");
	String paymentType_NAME = "";
	String bankName = request.getParameter("bankName");
	String accountNum = request.getParameter("accountNum");
	String email = request.getParameter("email");

	
	if(supportType.equals("ST_short")){
		supportType_NAME="1회 후원";
	}else if(supportType.equals("ST_regular")){
		supportType_NAME="정기 후원";
	}else{
		supportType_NAME="에러!";
	}
	
	if(paymentType.equals("PT_acntTf")){
		paymentType_NAME="실시간 계좌이체";
	}else if(paymentType.equals("PT_deposit")){
		paymentType_NAME="무통장 입금";
	}else if(paymentType.equals("PT_phnPM")){
		paymentType_NAME="휴대폰 결제";
	}else{
		paymentType_NAME="에러!";
		
	}
%><br/>
		<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted divider">support info</div>
		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
			
<pre>
<b>후원자명 : <%= name %>
이메일 : <%= email %></b>

후원액 : <%= Amount %>
후원유형 : <%= supportType_NAME %>
결재방법 : <%= paymentType_NAME %>
계좌번호 : (<%= bankName %>) <%= accountNum %>

</pre>			

				상기 정보로 후원하시겠습니까?<br> <br/>
				<div class="row divider">
			<div class="col-sm-12" align="right">
				
				<input type="submit" value="후원하기"
					onclick="formChck('supportReg.do')">
			<input type="button" value="재 작성" onclick="history.back();" />
			</div>
		</div>
				<br />
			</div>
		</div>
		
			<input type="HIDDEN" name="Name" id="Name" value="<%= name %>" required>
			<input type="HIDDEN" name="Amount" id="Amount" required size="15" value="<%= Amount %>"> 
			<input type="HIDDEN" name="supportType" value="<%= supportType %>" checked="checked" >
			<input type="HIDDEN" name="paymentType" value="<%= paymentType %>" checked="checked" >
				<select name="bankName" id="bankName" style="width: 1px; height: 1px;">
					<option selected="selected" value="<%= bankName %>"></option>
				</select> 
			<input type="HIDDEN" name="accountNum" value="<%= accountNum %>" required size="20"><br /> 
			<input type="HIDDEN" id="email" name="email" value="<%= email %>" required size="40">				
			<input type="HIDDEN" value="입금" name="state">
			<input type="hidden" value="${sessionScope.user_num}"
					name="user_num">
				
	</form>
	
</body>
</html>
<%@page import="dao.supportDAO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Countdown Examples 2</title>
<style type="text/css">


.redSpan{

 	color: black;
 	font-weight: bold;
}

</style>

<!-- =========================================================== -->
<!-- COUNTDOWN NOTE: 
		When using more than one Countdown, 
		we recommend placing a reference 
		to the script once in HEAD -->
<!-- =========================================================== -->
<script src="/Eden/common/countdown/countdown_v4.3/countdown.js"
	type="text/javascript"></script>
<%
	long totalmoney = (Long) session.getAttribute("totalmoney");
	long day = (1000 * 3600 * 24);
	Calendar today = Calendar.getInstance();
	int curYear = today.get(Calendar.YEAR);
	int curMonth = today.get(Calendar.MONTH);
	int curDate = today.get(Calendar.DATE);

	System.out.println(today.get(Calendar.YEAR));
	System.out.println(today.get(Calendar.MONTH) + 1);
	System.out.println(today.get(Calendar.DATE));

	Calendar limittime = Calendar.getInstance();

	limittime.set(curYear, curMonth, curDate+5, 23, 59, 59);
	System.out.println(limittime.getTimeInMillis());
	System.out.println(limittime.get(Calendar.YEAR));
	System.out.println(limittime.get(Calendar.MONTH) + 1);
	System.out.println(limittime.get(Calendar.DATE));

	today.setTimeInMillis(limittime.getTimeInMillis()
			- today.getTimeInMillis());
	long countdowninmillis = today.getTimeInMillis();

	long countdown = countdowninmillis / 1000;

	countdown += totalmoney;
	
	System.out.println(countdown);
	System.out.println(totalmoney);
%>
</head>

<body>
<center>


	<h1>Endangered Animals List</h1>
	<img src="/Eden/images/bar_white.png" width=95%>
		<hr />		
	</center>

	<table align="center" width =80% style="margin: 40px;">
		<tr align="center">
			<td><span class="label label-default" style="font-size: 24pt;">CR</span></td>
			<td><span class="label label-default" style="font-size: 24pt;">EN</span></td>
			<td><span class="label label-default" style="font-size: 24pt;">VU</span></td>
		</tr>
		<tr align="center">
			<td><script type="application/javascript">
	var myCountdown1 = new Countdown({
 	time: <%=countdown-2000000%>, 
 	
	width:200, 
	height:55,  
	rangeHi:"day",
	style:"flip"	
	});
	</script></td>
			<td><script type="application/javascript">
	var myCountdown1 = new Countdown({
 	time: <%=countdown-500000%>, 
	width:200, 
	height:55,  
	rangeHi:"day",
	style:"flip"	
	});
	</script></td>
	<td><script type="application/javascript">
	var myCountdown1 = new Countdown({
 	time: <%=countdown%>, 
	width:200, 
	height:55,  
	rangeHi:"day",
	style:"flip"	
	});
	</script></td>
	</tr>
	
	
	<tr align="center">
		<td><span class="redSpan">CR</span>ITICALLY ENDANGERED <br/>
			<b>위기심각</b></td>
		<td><span class="redSpan">EN</span>DANGERED <br/>
			<b>위기</b></td>
		<td><span class="redSpan">VU</span>LNERABLE <br/>
			<b>취약</b></td>
		
	</tr>
	</table> 
	<center>
		위 시계(Endangered Timer)는 RedList 등급에 따라 생물종 멸종까지의 시간을 단위시간으로 환산한 것입니다.<br/>(도움말 보기 추가)</center>

<br/><br/><br/>




</body>
</html>
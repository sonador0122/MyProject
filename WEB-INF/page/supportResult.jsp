<%@page import="twitter4j.Twitter"%>
<%@page import="facebook4j.Facebook"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%Facebook facebook = (Facebook)session.getAttribute("facebook"); 
Twitter twitter = (Twitter)session.getAttribute("twitter");%>
<script type="text/javascript">
 

function goReplace(str) {
location.replace(str);
}
 

</script>
</head>
<body>
	<form action="writefeed.do" method="POST">
			<div align="right" style=" float:right; margin-bottom: 50px; margin-right: 0">
	<img src="/Eden/res/img/menubar/sptBar03.png" width="80%" align="right" >
			</div>
		
		<center>
			<img
				src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">
			<h3>후원이 완료되었습니다!</h3>
			<center>
			후원에 참여해주셔서 감사합니다.
			후원 내역은 myPage에서 조회할 수 있습니다. (비회원 불가)
			<hr/>
			</center>
		</center>
	
		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<%if(twitter!=null&facebook==null){%>
				<input type="submit" value="트위터 게시">
				<%}else if(facebook!=null&twitter==null){%>
					<input type="submit" value="페이스북게시">
				<%}else{%>
					<input type="button" value="한걸음더로 가기" onclick="goReplace('side_support.do')">
				<%}%>
			</div>	
		</div>
	</form>	
</body>
</html>
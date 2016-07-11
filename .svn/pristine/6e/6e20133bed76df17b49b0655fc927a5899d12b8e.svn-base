<%@page import="facebook4j.Facebook,twitter4j.Twitter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
 

function goReplace(str) {
location.replace(str);
}
 

</script>
<%Facebook facebook = (Facebook)session.getAttribute("facebook"); 
Twitter twitter = (Twitter)session.getAttribute("twitter");%>
	<form action="writefeed.do" method="POST">
		<center>
			<img
				src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">
			<h3>지금까지 모인 모금액</h3>

			<h1>${totalamount }원</h1>

			
		</center>

		<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted">support guide</div>
		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
				사진 / 이름 <br/>
				오늘날짜
				if (결재방식에 따라)
					- 무통장 입금일 때 '1주일 내로 입금해주세요 아니면 내역 삭제됨.'<br/>
				
			
		</div>
		<div class="col-sm-12" id="stories">
			<div class="page-header text-muted divider">give financial support to</div>
			
				<a href="chckAmount.do">후원금 보기 테스트 하기</a><br/>
				<a href="sptInfo.do">리스트 테스트 하기</a><br/>
		</div>
		<!--/stories-->
		<div class="row">
			
			
		</div>
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

<br/>

<br/>

<br/>

<br/>


	</form>
</body>
</html>
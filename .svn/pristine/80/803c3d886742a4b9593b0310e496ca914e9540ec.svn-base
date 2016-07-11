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
</head>
<body>

	<form name='thisForm' action="supportReg.do" method="POST">
		<script language="javascript" src="/Eden/res/js/viewTitle.js"
			type="text/javascript"></script>


		<center>
			<img src="${addto.getImg() }" class="img-square " style="width: 300px;height: 300px">
			<h3>안녕하세요 ${addto.getUserid() }님!</h3>

		</center>
		<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted">My Info</div>


		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
				아이디 : ${addto.getUserid() }<br /> 회원가입일 : ${addto.getHiredate() }<br />
				후원 총액 : ${amount }원 (${count}번) <br /> 남긴 메세지 : ${userCount}개<br />
				<hr>

				<h5>* 후원내역</h5>
				<table border="1" style="width: 100%; margin: 20px">
					<tr>
						<th>후원코드</th>
						<th>후원일자</th>
						<th>후원금액</th>
						<th>결제방법</th>
						<th>후원유형</th>
						<th>입금은행</th>
						<th>계좌번호</th>
					</tr>
					<c:forEach var="mySptlist" items="${mySptlist}">
						<tr>
							<td>${mySptlist.supportCode}</td>
							<td>${mySptlist.infodate}</td>
							<td>${mySptlist.amount}</td>
							<td>${mySptlist.paymentType}</td>
							<td>${mySptlist.supportType}</td>
							<td>${mySptlist.bankName}</td>
							<td>${mySptlist.accountNum}</td>

						</tr>
					</c:forEach>

				</table>


				<br />
			</div>
		</div>

		<div class="col-sm-12" id="stories">
			<div class="page-header text-muted divider">내가 남긴 메세지</div>
		</div>
		<!--/stories-->
		<div class="row">
			<div class="col-sm-10">
				<table border="1" style="width: 100%; margin: 20px">
					<tr>
						<th>번호</th>
						<th>내용</th>
					</tr>
					<c:forEach var="msglist" items="${msglist}">
						<tr>
							<td>${msglist.getMsg_num()}</td>
							<td>${msglist.getMsg_content()}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>


		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<!-- <input type="submit" value="등록하기"
					onclick="formChck('supportReg.do')"> -->
			</div>
		</div>

		<br /> <br /> <br /> <br />


	</form>
</body>
</html>
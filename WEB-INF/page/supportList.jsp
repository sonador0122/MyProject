<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
		

</head>
<body>
		
<form name='thisForm' method="post">
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">후원목록 보기</div>
				<div class="pull-right">
					<span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span>
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area" >
					
					
		<h1>후원목록보기</h1>
	<hr />
	<table border="1" style="width:95%;  margin: 20px">
		<tr>
			<th><input type="checkbox" disabled></th>
			<th>상태</th>
			<th>내역코드</th>
			<th>이메일</th>
			<th>유저번호</th>
			<th>후원유형</th>
			<th>결제유형</th>
			<th>입금은행</th>
			<th>계좌번호</th>
			<th>예금주명</th>
			<th>입금액</th>
			<th>후원일자</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="sptlist" items="${sptlist}">
		
			<tr>
			<c:choose>
				<c:when test="${sptlist.state =='미입금'}">
						<td><input type="checkbox" name="supportCode" value="${sptlist.supportCode}"></td>
				</c:when>
					<c:otherwise>
						<td><input type="checkbox" disabled></td>
					</c:otherwise>
				</c:choose>
				<td>${sptlist.state}</td>
				<td>${sptlist.supportCode}</td>
				<td>${sptlist.email}</td>
				<td>${sptlist.user_num}</td>
				<td>${sptlist.supportType}</td>
				<td>${sptlist.paymentType}</td>
				<td>${sptlist.bankName}</td>
				<td>${sptlist.accountNum}</td>
				<td>${sptlist.name}</td>
				<td>${sptlist.amount}</td>
				<td>${sptlist.infodate}</td>
				<td><a href="dltRecode.do?code=${sptlist.supportCode}">삭제</a></td>
			</tr>
		</c:forEach>


	</table>
	<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
					<input type="button" value="모두선택" onclick="">
					<input type="button" value="입금완료" onclick="mySubmit('chckDeposit.do')">
			</div>
		</div>
					
					</div>
				</div>
			</div>
		</div>



		
		
	</form>
	<br/><br/><br/><br/>
	
	
</body>
</html>
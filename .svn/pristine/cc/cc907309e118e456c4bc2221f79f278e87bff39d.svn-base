<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="/Edem/res/css/admin/vendors/morris/morris.min.js"></script>
<script src="/Eden/res/css/admin/vendors/jquery-1.9.1.min.js"></script>
<script src="/Eden/res/css/admin/vendors/jquery.knob.js"></script>
<script src="/Eden/res/css/admin/vendors/raphael-min.js"></script>
<script src="/Eden/res/css/admin/vendors/morris/morris.min.js"></script>
</head>
<body>
	<form name='thisForm' method="post">
	
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">등록된 메세지 내역</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<h3>총 등록 건수 : <c:out value="${count }"/></h3>
						<hr />
					<table border="1" width="1000" style="margin: 20px">
		<tr>
			<th>메세지 번호</th>
			<th>유저번호</th>
			<th>내용</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="msglist_All" items="${msglist_All}">
			<tr>
				<td>msg_${msglist_All.msg_num}</td>
				<td>user_${msglist_All.user_num}</td>
				<td>${msglist_All.msg_content}</td>
				<td><a href="msg_delete.do?msg_num=${msglist_All.msg_num}">삭제</a></td>
			</tr>
		</c:forEach>


	</table>
						
						
<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>

					
			</div>
		</div>
					
					</div>
				</div>
			</div>
		</div>






	</form>
	<br />
	<br />
	<br />
	<br />


</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="free_insert.do">
		<table border="1" width="900" style="width: 95; margin: 20px" align="center">
			<tr>
				<th style="text-align: center;">번호</th>
				<th style="text-align: center;">제목</th>
				<th style="text-align: center;">작성자</th>
				<th style="text-align: center;">등록일</th>
				<th style="text-align: center;">조회수</th>
			</tr>
			<c:forEach var="free" items="${freelist}">
				<tr>
					<td style="text-align: center;">NO.${free.free_no}</td>
					<td width="400px"  style="text-align: center;"><a
						href="free_view.do?free_no=${free.free_no}">${free.free_title}</a></td>
					<td style="text-align: center;">${free.username}</td>
					<td style="text-align: center;">${free.free_hiredate}</td>
					<td style="text-align: center;">${free.free_count}</td>
				</tr>
			</c:forEach>
			<tr style="text-align: center;">
				<td colspan="5"><input type="submit" value="등록" style="width: 100px"></td>
			</tr>

		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/Eden/res/css/bootstrap.min.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<a href="events_insertview.do"> events 추가 </a> </br>
		</br>
		</br>
		<h1>Events List</h1>
		</hr>
		<table border=1 width='800'>

			<tr bgcolor='#886d9c' align='center'>
				<th>EVENTS_NO</th>
				<th>ID</th>
				<th>TITLE</th>
				<th>CONTENTS</th>
				<th>PIC_URLS</th>
				<th>Update</th>
				<th>Delete</th>

			</tr>
			<c:forEach var="events" items="${eventsList}">
				<tr>

					<td>${events.events_no}</td>
					<td>${events.id}</td>
					<td>${events.title}</td>
					<td>${events.contents}</td>
					<td>${events.pic_urls}</td>
					<td><a href="events_updateview.do?events_no=${events.events_no}">
							NO.${events.events_no} 수정하기</a></td>
					<td><a href="events_delete.do?title=${events.title}"> 삭제하기</a></td>

				</tr>
			</c:forEach>
		</table>

	</div>


</body>
</html>
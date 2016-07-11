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
		<a href="video_insertview.do"> 비디오 추가 </a> </br> </br>
		<h1>VIDEO List</h1>
		</hr>
		<table border=1 width='800'>

			<tr bgcolor='#886d9c' align='center'>
				<th>VIDEO_NO</th>
				<th>ID</th>
				<th>TITLE</th>
				<th>VIDEO_URLS</th>
				<th>Update</th>
				<th>Delete</th>

			</tr>

			<c:forEach var="video" items="${videoList}">

				<tr>

					<td>${video.video_no}</td>
					<td>${video.id}</td>
					<td>${video.titles}</td>
					<td>${video.video_urls}</td>
					<td><a href="video_updateview.do?video_no=${video.video_no}">NO.${video.video_no}
							수정하기</a></td>
					<td><a href="video_delete.do?title=${video.titles}"> 삭제하기</a></td>

				</tr>
			</c:forEach>
		</table>

	</div>




</body>
</html>
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
 
	<div align="center">

	
		<!-- map 밑에 동물List뿌리기 위한 표의 상위 속성 -->
		<table class="table table-hover" align="center">

			<tr>

				<th>Common names in English</th>
				<th>Class</th>
				<th>Family</th>
				<th>Authority</th>
				<th>Red List status</th>
				<th>Distribution Nation's ISO Codes</th>
				<th>PICS</th>

			</tr>
			<!-- map 밑에 동물List뿌리기 위한 표의 상위 속성  end-->

			<c:forEach var="animals" items="${animalsList}">
				<tr>
					<td><c:out value="${animals.common_names}" /></td>
					<td><c:out value="${animals.class_names}" /></td>
					<td><c:out value="${animals.family}" /></td>
					<td><c:out value="${animals.authority}" /></td>
					<td><span class="label label-default"><c:out value="${animals.red_List_status}" /></span></td>
					<td><c:out value="${animals.ISO_Codes}" /></td>
<!-- <a href="animals.jsp" target="_self"> -->
					<td> <img src="${animals.URLS}" width="350" height="250" /></td>


				</tr>
			</c:forEach>

		</table>

	</div>





</body>

</html>
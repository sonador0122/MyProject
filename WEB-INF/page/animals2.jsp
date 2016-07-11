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
	<center>
		<h1>Endangered Animals List</h1>
	</center>

	<!-- 선택창 카테고리 조류 , 양서류 등등 -->

	<img src="/Eden/images/bar_white.png" width=95%>
	<br/><br/><br/>
	
</center>

	<div align="center">

		<table class="table table-hover">
			<tr align='center'>
				<!-- location.href= -->
				<td><a href="birds.do?Class_names=Birds"> <img
						src="/Eden/images/animals/birds.png" style="width: 80px;"><br />
						<h4>
							<b> 조류(birds) </b>
						</h4>

				</a></td>
				<td><a href="birds.do?Class_names=Amphibians"> <img
						src="/Eden/images/animals/Amphibians.jpg" style="width: 110px;"><br />
						<h4>
							<b>양서류(Amphibians)</b>
						</h4>


				</a></td>
				<td><a href="birds.do?Class_names=MAMMALS"> <img
						src="/Eden/images/animals/Mammals.png" style="width: 80px;"><br />
						<h4>
							<b>포유류(Mammals)</b>
						</h4>

				</a></td>
				<td><a href="birds.do?Class_names=MarineFish"> <img
						src="/Eden/images/animals/MarineFish.png" style="width: 80px;"><br />
						<h4>
							<b>어류(MarineFish)</b>
						</h4>

				</a></td>
				<td><a href="birds.do?Class_names=Reptiles"> <img
						src="/Eden/images/animals/Reptiles.png" style="width: 80px;"><br />
						<h4>
							<b>파충류(Reptiles)</b>
						</h4>

				</a></td>
			</tr>

		</table>



		<hr />

		<!-- 동물리스트 찍을 곳 -->
		<table class="table table-hover">

			<tr align='center'>

				<th>Common names in English</th>
				<th>Class</th>
				<th>Family</th>
				<th>Authority</th>
				<th>Red List status</th>
				<th>Distribution Nation's ISO Codes</th>
				<th>PICS</th>

			</tr>
			<c:forEach var="animals2" items="${animalsList2}">
				<tr>

					<td><span class="label label-default"
						style="font-size: 14px; background-color: #eeff78; margin: 10px;"><a
							href="where.do?ISO_Codes=${animals2.ISO_Codes}&Common_names=${animals2.common_names} ">▶
								<c:out value="${animals2.common_names}" />
						</a></span></td>
					<td><c:out value="${animals2.class_names}" /></td>
					<td><c:out value="${animals2.family}" /></td>
					<td><c:out value="${animals2.authority}" /></td>
					<td><span class="label label-default"><c:out
								value="${animals2.red_List_status}" /></span></td>
					<td><c:out value="${animals2.ISO_Codes}" /></td>
<!-- <a href="animals2.jsp" target="_self">  -->
					<td><img src="${animals2.URLS}" width="350" height="250" /></td>


				</tr>
			</c:forEach>

		</table>

	</div>




</body>

</html>
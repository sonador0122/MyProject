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
		<table class="table table-hover">
		 <tr align='center'>
			<td><a href="birds.do?Class_names=Birds">
		 	<img src="/Eden/images/animals/birds.png" style="width:80px;"><br/>	
		 	<h4><b> 조류(birds)  </b></h4>
		 	
		 	</a>
		 	</td>
		 	<td><a href="birds.do?Class_names=Amphibians">
		 	
		 	<img src="/Eden/images/animals/Amphibians.jpg" style="width:110px;"><br/>
		 	<h4><b>양서류(Amphibians)</b></h4>
		 	
		 	
		 	</a></td>
		 	<td><a href="birds.do?Class_names=MAMMALS">
		 	<img src="/Eden/images/animals/Mammals.png" style="width:80px;"><br/>
		 	<h4><b>포유류(Mammals)</b></h4>
		 	
		 	</a></td>
			<td><a href="birds.do?Class_names=MarineFish">
			
			<img src="/Eden/images/animals/MarineFish.png" style="width:80px;"><br/>
			<h4><b>어류(MarineFish)</b></h4>
			
			</a></td>
			<td><a href="birds.do?Class_names=Reptiles">
			<img src="/Eden/images/animals/Reptiles.png" style="width:80px;"><br/>
			<h4><b>파충류(Reptiles)</b></h4>
			
			</a></td>
		 </tr>
		
		</table>
		<img src="/Eden/images/bar_white.png" width=95%>
</center>	
	<div align="center">
		<hr />
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
			
				<tr>
				<!-- test -->
					<td><c:out value="${animal.getCommon_names()}" /></td>
					<td><c:out value="${animal.getClass_names()}" /></td>
					<td><c:out value="${animal.getFamily()}" /></td>
					<td><c:out value="${animal.getAuthority()}" /></td>
					<td><c:out value="${animal.getRed_List_status()}" /></td>
					<td><c:out value="${animal.getISO_Codes()}" /></td>

					<td><a href="animals2.jsp" target="_self"> <img
							src="${animal.getURLS()}" width="350" height="250" /></a></td>


				</tr>
		

		</table>

	</div>







</body>

</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="/Eden/res/css/admin/vendors/morris/morris.min.js"></script>
<script src="/Eden/res/css/admin/vendors/jquery-1.9.1.min.js"></script>
<script src="/Eden/res/css/admin/vendors/jquery.knob.js"></script>
<script src="/Eden/res/css/admin/vendors/raphael-min.js"></script>
<script src="/Eden/res/css/admin/vendors/morris/morris.min.js"></script>
</head>
<body>
	<form name='thisForm' method="post">
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">�����ڷ� ���</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">�̸� �� ����</span>
					<span class="badge badge-warning">�Ŀ��� �� ����</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<div class="block-content collapse in">
							<div class="span6 chart">

								
								<br /> 
								 title : <input type="text" id="titles" name="titles" placeholder="titles"
									class="input-xxlarge" required size="50"> <br /> 
									
								urls : <input type="text" id="video_urls" name="video_urls"
									placeholder="video_urls" class="input-xxlarge" required
									size="100">


							</div>
							<div class="span5 chart"></div>
						</div>

						<div class="row divider">
							<div class="col-sm-12" align="right">
								<hr>
								<input type="button" value="����ϱ�"
									onclick="mySubmit('video_insert.do')">
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>





		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">��ϵ� �����ڷ� ����</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">�̸� �� ����</span>
					<span class="badge badge-warning">�Ŀ��� �� ����</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<h3>�� ��� �Ǽ� : </h3>
						<hr />
					<table border="1" width="1200" style="width:95; margin: 20px">
		<tr>
			<th><input type="checkbox" disabled></th>
			<th>��ȣ</th>
			<th>����</th>
			<th>�����</th>
			<th>���</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<c:forEach var="video" items="${videoList}">
		
			<tr>
				<td><input type="checkbox" name="vdoNo" value="${video.video_no}"></td>
				<td>NO.${video.video_no}</td>
				<td>${video.titles}</td>
				<td>${video.id}</td>
				<td>${video.video_urls}</td>
				<td><a href="video_updateview.do?video_no=${video.video_no}">����</a></td>
				<td><a href="video_delete.do?titles=${video.titles}">����</a></td>
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
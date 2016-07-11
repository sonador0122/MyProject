<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="/proTemp/res/css/admin/vendors/morris/morris.min.js"></script>
<script src="/proTemp/res/css/admin/vendors/jquery-1.9.1.min.js"></script>
<script src="/proTemp/res/css/admin/vendors/jquery.knob.js"></script>
<script src="/proTemp/res/css/admin/vendors/raphael-min.js"></script>
<script src="/proTemp/res/css/admin/vendors/morris/morris.min.js"></script>
</head>
<body>
	<form name='thisForm' method="post">
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">행사정보 등록</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<div class="block-content collapse in">
							<div class="span6 chart">

								제이쿼리로 해당 항목이 눌렸을때 (값이 입력되었을때) 이미지 섹션 생성
								<br /> 
								 title : <input type="text" id="title" name="title" placeholder="title"
									class="input-xxlarge" required size="50"> <br /> 
									
									
								evtDate : <input type="text" id="evtDate" name="evtDate"
									placeholder="evtDate" class="input-xxlarge" required
									size="100">
									<br /> 
								contents : <input type="text" id="contents" name="contents"
									placeholder="contents" class="input-xxlarge" 
									size="100"><br /> 
								
								
									
								site urls : <input type="text" id="siteurls" name="siteurls"
									placeholder="siteurls" class="input-xxlarge" required
									size="100"><br /> 
								pic_urls : <input type="text" id="pic_urls" name="pic_urls"
									placeholder="pic_urls" class="input-xxlarge" required
									size="100"><br /> 


							</div>
							<div class="span5 chart"></div>
						</div>

						<div class="row divider">
							<div class="col-sm-12" align="right">
								<hr>
								<input type="button" value="등록하기"
									onclick="mySubmit('events_insert.do')">
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>





		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">등록된 행사	정보 내역</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<h3>총 등록 건수 : </h3>
						<hr />
					<table border="1" style="width:95%; margin: 20px">
		<tr>
			<th><input type="checkbox" disabled></th>
			<th>번호</th>
			<th>제목</th>
			<!-- <th>등록자</th> -->
			<th>행사일</th>
			<!-- <th>정보</th>-->
			<th>경로</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="evt" items="${eventsList}">
		
			<tr>
				<td><input type="checkbox" name="vdoNo" value="${evt.events_no}"></td>
				<td>NO.${evt.events_no}</td>
				<td>${evt.title}</td>
				<!-- <td>${evt.id}</td> -->
				<td>${evt.evtDate}</td>
				<!-- <td>${evt.contents}</td>-->
				<td>
				- 사이트 : ${evt.siteUrl} <br/>
				- 이미지 : ${evt.pic_urls}</td>
				
							
				<td><a href="events_updateview.do?events_no=${evt.events_no}">수정</a></td>
				<td><a href="events_delete.do?events_no=${evt.events_no}">삭제</a></td>
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
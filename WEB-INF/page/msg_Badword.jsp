<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
				<div class="muted pull-left">비속어 등록</div>
				<div class="pull-right">

				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<div class="block-content collapse in">
							<div class="span6 chart">

								
								<br /> 
								 비속어 : <input type="text" id="word" name="word" placeholder="word"
									class="input-xxlarge" required size="50"> <br /> 

							</div>
							<div class="span5 chart"></div>
						</div>

						<div class="row divider">
							<div class="col-sm-12" align="right">
								<hr>
								<input type="button" value="등록하기"
									onclick="mySubmit('badword_insert.do')">
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">등록된 비속어 내역</div>
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
					<table border="1" width="600" style="margin: 20px">
		<tr>
			<th>번호</th>
			<th>비속어</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="badword" items="${badwordlist}">
			<tr>
				<td>badwords_${badword.getNum()}</td>
				<td>${badword.getWord()}</td>
				<td><a href="badwords_delete.do?num=${badword.getNum()}">삭제</a></td>
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
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js">

<head>
<title>Admin Home Page</title>
<!-- Bootstrap -->
<link href="/Eden/res/css/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="/Eden/res/css/admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen">
<link href="/Eden/res/css/admin/vendors/easypiechart/jquery.easy-pie-chart.css"
	rel="stylesheet" media="screen">
<link href="/Eden/res/css/admin/assets/styles.css" rel="stylesheet" media="screen">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<script src="/Eden/res/css/admin/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<%int i = 0; %>
<body>
	<div class="container-fluid">
		<!--/span-->
			<div class="span12" id="content">
				<div class="row-fluid">
					
				</div>
				<!-- 오늘 방문한 사용자들 sns으로 분별 -->
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">sns별 가입 현황</div>
							
						</div>
						<div class="block-content collapse in">
							<div class="span3">
								<div class="chart" data-percent="${facebookpercentage }">${facebookmember }</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">Facebook</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="${twitterpercentage }">${twittermember }</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">Twitter</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="${userpercentage }">${usermember }</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">Users</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="100">${totalmember}</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">Total</span>

								</div>
							</div>
						</div>
					</div>
					<!-- /block -->
				</div>
				<div class="row-fluid">
					<div class="span6">
						<!-- block -->
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">새로운 가족</div>
								<div class="pull-right">
									<span class="badge badge-info">go member</span>

								</div>
							</div>
							<div class="block-content collapse in" align = "center">
								<table class="table table-striped" >
									<thead>
										<tr> 
											<th>Date</th>
											<th>UserName</th>
											<th>SNS</th>
											<th>Email</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="members" items="${recent_member}">
											<tr>
												<td>${members.hiredate }</td>
												<td>${members.username }</td>
												<td>${members.snstype}</td>
												<td>${members.email}</td>
											</tr>										
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /block -->
					</div>
					<div class="span6">
						<!-- block -->
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">후원 랭킹 순위</div>
								<div class="pull-right">
									<span class="badge badge-info">go 후원</span>

								</div>
							</div>
							<div class="block-content collapse in">
								<table class="table table-striped">
								<thead>
										<tr> 
											<th>Rank</th>
											<th>Name</th>
											<th>Money</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="rank" items="${support_rank}">
											<tr>
												<td><%=++i %></td>
												<td>${rank.name }</td>
												<td>${rank.sumamount}$</td>
											</tr>										
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /block -->
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<!-- block -->
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">최근 메세지</div>
								<div class="pull-right">
									<span class="badge badge-info">go msg</span>

								</div>
							</div>
							<div class="block-content collapse in">
								<table class="table table-striped">
									<thead>
										<tr align = "center">
											<th>Num</th>
											<th>UserName</th>
											<th>Message</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="msgs" items="${recent_msg}">
											<tr>
												<td>${msgs.msg_num }</td>
												<td>${msgs.msg_name}</td>
												<td>${msgs.msg_content}</td>
											</tr>										
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /block -->
					</div>
				</div>

				<hr>
				<footer>
					<p>&copy; Vincent Gabriel 2013</p>
				</footer>
			</div>
		</div>
	</div>
	<!--/.fluid-container-->
	<script src="/Eden/res/css/admin/vendors/jquery-1.9.1.min.js"></script>
	<script src="/Eden/res/css/admin/bootstrap/js/bootstrap.min.js"></script>
	<script src="/Eden/res/css/admin/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
	<script src="/Eden/res/css/admin/assets/scripts.js"></script>
	<script>
		$(function() {
			// Easy pie charts
			$('.chart').easyPieChart({
				animate : 1000
			});
		});
	</script>
</body>

</html>
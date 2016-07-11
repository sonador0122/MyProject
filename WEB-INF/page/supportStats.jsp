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
<script src="/Eden/res/js/Chart.js"></script>
<%String[] typename = (String[])request.getAttribute("typename");
int i = 0;%>
</head>
<body>
	<form name='thisForm' method="post">
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">후원 총액</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span6 chart">
				오늘날짜까지 총액은 <br/>

					<h2>${totalAmount}</h2> 원 입니다. <br/>
					(순서대로 총액, 어제, 이번주) <br/>
					
					<c:forEach var="ainfA" items="${amountInfo}" varStatus="stat">
					<input type="text" name="none" value="<c:out value="${ainfA}"/>"> <br> 
				</c:forEach>
					
				
					   
				</div>
				<div class="span5 chart">
				   <h5>login type별 후원비율</h5>
				   (단위 : %)
				   <div id="canvas-holder">
					<canvas id="chart-area" width="300" height="300"/>
					</div>
				<c:forEach var="lgA" items="${LoginAmount}" varStatus="stat">
					<label>- <%=typename[i++]%></label> : <input type="text" name="lgaCon_${stat.count }" value="<c:out value="${lgA}"/>"> <br> 
				</c:forEach>
              
                 </div>
          
			</div>
			
			
			
		</div>


		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">오늘 후원 내역</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<div id="hero-area">
						<h2>오늘 후원</h2>
						<hr />
						<table border="1" width="1200" style="margin: 20px">
							<tr>

								<th>상태</th>
								<th>내역코드</th>
								<th>이메일</th>
								<th>유저번호</th>
								<th>후원유형</th>
								<th>결제유형</th>
								<th>입금은행</th>
								<th>계좌번호</th>
								<th>예금주명</th>
								<th>입금액</th>
								<th>후원일자</th>

							</tr>
							<c:forEach var="sptTodaylist" items="${sptTodaylist}">

								<tr>
									<td>${sptTodaylist.state}</td>
									<td>${sptTodaylist.supportCode}</td>
									<td>${sptTodaylist.email}</td>
									<td>${sptTodaylist.user_num}</td>
									<td>${sptTodaylist.supportType}</td>
									<td>${sptTodaylist.paymentType}</td>
									<td>${sptTodaylist.bankName}</td>
									<td>${sptTodaylist.accountNum}</td>
									<td>${sptTodaylist.name}</td>
									<td>${sptTodaylist.amount}</td>
									<td>${sptTodaylist.infodate}</td>

								</tr>
							</c:forEach>


						</table>



					</div>
				</div>
			</div>
		</div>

		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">후원 현황</div>
				<div class="pull-right">
					<!-- <span class="badge badge-warning">이름 순 정렬</span>
					<span class="badge badge-warning">후원액 순 정렬</span> -->
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span6 chart">	
						<h3>분기별 후원현황</h3>
				<c:forEach var="qtA" items="${quarterAmount}" varStatus="stat">
				
					<input type="hidden" name="qtaCon_${stat.count }" value="<c:out value="${qtA}"/>">
					<br>
				</c:forEach>
				<div id="hero-bar" style="height: 400px;"></div>
				</div>
				
				
				<div class="span5 chart">
                        <h5>Month traffic</h5>
                                    <h3>최다 후원 월 :  <br/>
                            <c:forEach var="MonthlyMax" items="${MonthlyMax}">
								${MonthlyMax.mydate} :: ${MonthlyMax.maxval}
							</c:forEach></h3>
                </div>
			</div>
		</div>
	</form>
	<br />
	<br />
	<br />
	<br />

	<script type="text/javascript">
		var qtaCon_1 = document.thisForm.qtaCon_1.value;
		var qtaCon_2 = document.thisForm.qtaCon_2.value;
		var qtaCon_3 = document.thisForm.qtaCon_3.value;
		var qtaCon_4 = document.thisForm.qtaCon_4.value;
		Morris.Bar({
			element : 'hero-bar',
			data : [ {
				quarter : '1분기 (1월 ~ 3월)',
				amount : qtaCon_1
			}, {
				quarter : '2분기 (4월 ~ 6월)',
				amount : qtaCon_2
			}, {
				quarter : '3분기 (7월 ~ 9월)',
				amount : qtaCon_3
			}, {
				quarter : '4분기 (9월 ~ 12월)',
				amount : qtaCon_4
			} ],
			xkey : 'quarter',
			ykeys : [ 'amount' ],
			labels : [ '총액' ],
			barRatio : 0.1,
			xLabelMargin : 1,
			hideHover : 'auto',
			barColors : [ "#3d88ba" ]
		});
//자바스크립트 ㅕ샤ㅣㅣ
		var vlgaCon_1 = Math.round(document.thisForm.lgaCon_1.value);
		var vlgaCon_2 = Math.round(document.thisForm.lgaCon_2.value);
		var vlgaCon_3 = Math.round(document.thisForm.lgaCon_3.value);
		var pieData = [
				{
					value: vlgaCon_1,
					color:"#11A6FF",
					highlight: "#53beff",
					label: "Twitter"
				},
				{
					value: vlgaCon_2,
					color: "#455d8d",
					highlight: "#768cbc",
					label: "FaceBook"	
				},
				{
					value: vlgaCon_3,
					color: "#c6da36",
					highlight: "#e0eb92",
					label: "unKnown"
				}

			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};


			
	</script>

</body>
</html>
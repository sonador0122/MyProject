<%@page import="facebook4j.Facebook"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" charset="utf-8" href="g.css" />
<link rel="shortcut icon" href="favicon.ico" />
<meta name="verify-v1"
	content="BBkjRefRXlA3Tf6oGjfzboK8pfgijneuUKOlkodlLuU=" />
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="news.rss" />
<link rel="canonical"
	href="http://www.goat1000.com/tagcanvas-weighted.php" />
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7839831-1']);
_gaq.push(['_trackPageview']);
_gaq.push(['_trackPageLoadTime']);

(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
<style type="text/css">
<!-- /**
 * GeSHi (C) 2004 - 2007 Nigel McNie, 2007 - 2008 Benny Baumann
 * (http://qbnz.com/highlighter/ and http://geshi.org/)
 */
.javascript {
	font-family: 'Andale Mono', Consolas, monospace;
	font-size: 18px
}

.javascript .imp {
	font-weight: bold;
	color: red;
}

.javascript .kw1 {
	color: #000066;
	font-weight: bold;
}

.javascript .kw2 {
	color: #003366;
	font-weight: bold;
}

.javascript .kw3 {
	color: #000066;
}

.javascript .kw5 {
	color: #FF0000;
}

.javascript .co1 {
	color: #006600;
	font-style: italic;
}

.javascript .co2 {
	color: #009966;
	font-style: italic;
}

.javascript .coMULTI {
	color: #006600;
	font-style: italic;
}

.javascript .es0 {
	color: #000099;
	font-weight: bold;
}

.javascript .br0 {
	color: #bad01c;
}

.javascript .sy0 {
	color: #56d9c9;
}

.javascript .st0 {
	color: #3366CC;
}

.javascript .nu0 {
	color: #fc4565;
}

.javascript .me1 {
	color: #a378fc;
}


.javascript span.xtra {
	display: block;
}

p.weighty {
	width: 310px;
	padding: 1em 20px;
	float: left;
	background-color: #fff;
	border: 4px solid #aaa;
	border-radius: 20px;
	-moz-border-radius: 20px;
}

ul.weighted {
	float: left;
	display: block;
	width: 280px;
	overflow: auto;
	padding: 20px;
	margin: 0 10px 20px 0;
	background-color: #fff;
	border: 4px solid #aaa;
	border-radius: 20px;
	-moz-border-radius: 20px;
	visibility: hidden;
}

ul.weighted li {
	display: inline;
}

ul.weighted li a {
	margin: 2px;
}

canvas.example {
	border: 1px solid #000;
	margin: 2px 20px
}

canvas#gradient {
	float: right
}
-->
</style>
<!--[if lt IE 9]><![endif]-->
<script type="text/javascript" src="/Eden/common/js/excanvas.min.js"></script>
<script src="/Eden/common/js/tagcanvas.min.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
window.onload = function() {
	TagCanvas.interval = 20;
	TagCanvas.textFont = '나눔고딕 ExtraBold', 'HY견고딕';
	TagCanvas.textColour = '#00f';
	TagCanvas.textHeight = 25;
	TagCanvas.outlineColour = '#ffffff';
	TagCanvas.outlineThickness = 5;
	TagCanvas.maxSpeed = 0.04;
	TagCanvas.minBrightness = 0.1;
	TagCanvas.depth = 0.92;
	TagCanvas.pulsateTo = 0.2;
	TagCanvas.pulsateTime = 0.75;
	TagCanvas.initial = [0.1,-0.1];
	TagCanvas.decel = 0.98;
	TagCanvas.reverse = true;
	TagCanvas.hideTags = false;
	TagCanvas.shadow = '#ccf';
	TagCanvas.shadowBlur = 3;
	TagCanvas.weight = true;
	TagCanvas.weightFrom = 'data-weight';
  TagCanvas.fadeIn = 800;
	try {
		TagCanvas.Start('tagcanvas','weightTags',wOpts.colour);
	} catch(e) {
	}
	var i, j, g, gc = document.getElementById('gradient').getContext('2d');
	g = gc.createLinearGradient(0, 0, 0, gc.canvas.height);
	for(i in TagCanvas.weightGradient)
		g.addColorStop(i, TagCanvas.weightGradient[i]);
	gc.fillStyle = g;
	gc.fillRect(0,0,gc.canvas.width,gc.canvas.height);
  for(i = 0; i < gexamples.length; ++i) {
    gc = document.getElementById('example' + i).getContext('2d');
    g = gc.createLinearGradient(0, 0, gc.canvas.width, 0);
    for(j in gexamples[i])
      g.addColorStop(j, gexamples[i][j]);
    gc.fillStyle = g;
    gc.fillRect(0, 0, gc.canvas.width, gc.canvas.height);
  }
};
var g1 = {
 0:   'red',
 0.5: 'orange',
 1:   'rgba(0,0,0,0.1)',
}, wOpts = {
  none: { weight: false },
  size: null,
  colour: { weightMode: 'colour' },
  both: { weightMode: 'both' },
  bgcolour: { weightMode: 'bgcolour', padding: 2, bgRadius: 5 },
  bgoutline: { weightMode:'bgoutline', bgOutlineThickness: 3, padding: 2, bgRadius: 5}
}, gexamples = [];
//]]>
</script>
</head>
<body>

<script type="text/javascript" src="/Eden/res/js/swfobject.js"></script>

	<form name='thisForm' action="supportReg.do" method="POST">
		<script language="javascript" src="/Eden/res/js/viewTitle.js" type="text/javascript"></script>

	<center>
			<!-- <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">	 -->
							
					<div class="tagbox">
			<div class="centred">
			
			<div class="page-header text-muted">Donators</div>
			
				<ul class="weighted" style="font-size: 60%" id="weightTags">
					<c:forEach var="name" items="${namelist }">
						<li><a href="#" data-weight="<%=(Math.random() * 60) + 10%>"
							style="font-size: 5.83ex"><c:out value="${name }" /> </a></li>
					</c:forEach>
				</ul><br/>
				<canvas id="tagcanvas" width="800" height="500"></canvas>

			</div>
			<div id="htags" style="display: none;">
				<tags> <s_random_tags> <a href="#" class="#">test</a>
				</s_random_tags> <a href="/"></a></tags>
			</div>
		</div>
		
		<br/>
			<h3>지금까지 모인 모금액</h3>


			<script type="text/javascript">
				var cnt = "<c:out value="${totalAmount}원"/>";
				showTitle("/Eden/res/js/", "viewTitle.swf", 700, 30, cnt, "#",
						"center", "0x00000");
			</script>
			
		</center>










		<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted">support guide</div>
		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
				후원 절차 안내 
				<br />



				<!-- 		3.세션값제거 <br/>
					<c:remove var="loginCode" scope="session" /><br/>  -->

				<br />
			</div>
		</div>
		<div class="col-sm-12" id="stories">
			<div class="page-header text-muted divider">give financial
				support to</div>
		</div>
		<!--/stories-->
		<div class="row">
			<img
				src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-circle">

			<h4>
				<b>후원자 명 : <input type="text" name="Name" id="Name"
					placeholder="실명(입금자명)으로 작성" required></b>
				<!-- value = <'%'='"facebook.getMe().getName()" -->
			</h4>
			후원금액 : <input type="text" name="Amount" id="Amount" required
				size="15"> 원
			<p>

				* 후원 유형 : <input type="radio" name="supportType" value="ST_short"
					required>1회 후원 / <input type="radio" name="supportType"
					value="ST_regular" required>정기 후원 <br /> * 결제 유형 : <input
					type="radio" name="paymentType" value="PT_acntTf" required>실시간
				계좌이체 / <input type="radio" name="paymentType" value="PT_deposit"
					required>무통장 입금 / <input type="radio" name="paymentType"
					value="PT_phnPM" required>휴대폰 결제 / <br /> 취소 시에 입금액을 환불받을
				주문자 명의로 된 본인의 계좌를 입력해주세요<br /> <br /> 입금은행 :
				<%!String blank[] = { "우리", "하나" };%>
				<select name="bankName" id="bankName">
					<option selected="selected" value="bank_0">은행을 선택하세요</option>
					<option value="bank_1">우리은행</option>
					<option value="bank_2">하나은행</option>
					<option value="bank_3">기업은행</option>
				</select> 계좌번호 : <input type="text" name="accountNum"
					placeholder="'-'을 포함하여 작성" required size="20"><br /> 이메일 :
				<input type="text" id="email" name="email"
					placeholder="반드시 현재 사용중인 주소로 작성해주세요 " required size="40"> <input
					type="hidden" value="입금" name="state"> <br /> <br /> <br />
				<%-- 	1.세션값설정 (현재 설정 : T_11, F_12) / 
					<c:set var="ses_userNum" value="11" scope="session" /> 
					2.세션값찍기 :: <c:out value="${sessionScope.ses_userNum}" /> / 		 --%>
				<input type="hidden" value="${sessionScope.user_num}"
					name="user_num">

			</p>
			<h4></h4>
			<h4 align="right">
				<small class="text-muted">현재시간뿌리기</small>
			</h4>
		</div>

		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<input type="submit" value="등록하기"
					onclick="formChck('supportReg.do')">
			</div>
		</div>

		<br /> <br /> <br /> <br />


	</form>
	<script type="text/javascript">
					var t = new SWFObject("/Eden/res/js/tagcloud.swf",
							"tagcloud", "100%", "180", "9", "#48464b");
					t.addVariable("tcolor", "0xF29661");
					t.addVariable("hicolor", "0x1DDB16");
					t.addVariable("tcolor2", "0xFF0000");
					t.addVariable("mode", "tags");
					t.addVariable("distr", "true");
					t.addVariable("tspeed", "100");
					t.addParam("allowScriptAccess", "always");
					t.addVariable("tagcloud",
							document.getElementById('htags').innerHTML.replace(
									/class=([\w]+)/gi, 'class="$1"').replace(
									/\"\"/gi, '"').replace(/class=\"/gi,
									'style=\"font-size:').replace(
									/:cloud([\d])/gi, ':1$1pt;').replace(
									/TAGS\>/gi, 'tags>').replace(/\<A\s/gi,
									'<a ').replace(/\<\/A\>/gi, '</a>')
									.replace(/\"/g, "'"));
					t.write("TiCumulus");
				</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="/Eden/common/js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="/Eden/common/js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="/Eden/common/js/jquery-ui-1.9.2.custom.js"></script>
<script src="/Eden/common/js/jquery.js"></script>

<style type="text/css">
div.draggable {
	float: left;
	width: 200px;
	height: 250px;
	padding: 10px 0px 0px 20px;
	background-image:url(/Eden/images/post.png);
	background-size: 210px 250px;
}

div.invert {
	background: url(/Eden/images/post2.png) no-repeat;
}

p {
	font-size: 12px;
}
</style>
<script type="text/javascript">
	function goReplace(str) {
		location.replace(str);
	}
	$(function() {
		// 	 클래스가 draggable인 요소에 드래그 기본 함수를 적용한다.
		$(".draggable").draggable({
			// 		cursor옵션은 드래그 하는 동안 마우스 포인터의 모양을 변화시킴
			cursor : "move",
			// 		stack옵션은 드래그 대상이 되는 요소들을 자동으로 깊이 설정을 해줌
			// 		드래그 되는 요소가 가장 위에 올라온다
			stack : ".draggable",
			// 		드래그 하는 동안 불투명도는 0.7
			opacity : 0.7
		});

		// 	 dragtest이벤트는 드래그가 시작하면 발생
		$(".draggable").bind("dragstart", function(event, ui) {
			// 		 invert 클래스가 적용되어 배경 이미지가 변경됨
			$(this).addClass("invert");
		});

		// 	 dragstop이벤트는 드래그가 멈추면 발생
		$(".draggable").bind("dragstop", function(event, ui) {
			// 		 invert 클래스가 제거되어 원래 배경이미지로 돌아감
			$(this).removeClass("invert");
		});
	});
</script>
</head>
<body>
		<div class="draggable" onclick="goReplace('msg_insert_form.do')" align="center"><h2>Writing</h2></div>
		<c:forEach var="msg" items="${msglist}">
			<div class="draggable">
				<p>${msg.username}</p>
				<p>${msg.email}</p>
				<p>${msg.msg_name}</p>
				<p>${msg.msg_email}</p>
				<p>${msg.msg_content}</p>
			</div>
		</c:forEach>

</body>
</html>
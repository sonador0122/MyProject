<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int count = (Integer) session.getAttribute("count");
	%>
	<script type="text/javascript">
		
	<%if (count == 5) {%>
		alert('비밀번호 5회 이상 틀렸습니다. 목록으로 이동합니다.');
		location.replace('free_List.do');
	<%} else{%>
		alert('비밀번호를 잘못 입력하였습니다. 다시 입력하세요.');
		history.back();
	<%}%>
		
	</script>
</body>
</html>
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
		alert('��й�ȣ 5ȸ �̻� Ʋ�Ƚ��ϴ�. ������� �̵��մϴ�.');
		location.replace('free_List.do');
	<%} else{%>
		alert('��й�ȣ�� �߸� �Է��Ͽ����ϴ�. �ٽ� �Է��ϼ���.');
		history.back();
	<%}%>
		
	</script>
</body>
</html>
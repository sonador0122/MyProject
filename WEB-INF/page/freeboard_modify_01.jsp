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
		int count = 0;
	%>
	<form method="post" action="free_modify_01.do">
		<table align="center">
			<tr>
				<td>비밀번호를 입력하시오.</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="free_no" value=${param.free_no }>
					<input type="password" name="free_password">&nbsp; 
					<input type="submit" value="확인" style="width: 80px">&nbsp; 
					<input type="button" value="취소" style="width: 80px" onclick="Replace('free_List.do')"></td>
			</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="adminlogin.do">
	<FIELDSET style="width:300px; height:450px; padding:10px; border:1px solid Green;">
      <legend style="color:Green">관리자 로그인&nbsp;</legend>
		<table style="width: 250px; height: 350px">
			<tr>
				<td>아이디</td>
				<td><input type="text" id="userid" name="userid" style="width: 150px"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="password" name="password"  style="width: 150px"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인">&nbsp;&nbsp;
					<input type="button" value="취소"></td>
			</tr>
		</table>
		</FIELDSET>
	</form>
</body>
</html>
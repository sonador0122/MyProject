<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function goReplace(str) {

		location.replace(str);
	}
</script>
<body>
	<form name="form2" method="post" action="free_insert.do"
		enctype="multipart/form-data">
		<table border=1 width="800" height="300">
			<tr>
				<td colspan="6" style="text-align: center;">�ۼ��ϱ�</td>
			</tr>
			<tr>
				<td style="text-align: center;">�ۼ���</td>
				<td><input type="text" name="username" width="100px"></td>
				<td style="text-align: center;">����</td>
				<td><input type="text" name="free_title" width="500px"></td>
			</tr>
			<tr>
				<td style="text-align: center;">����</td>
				<td colspan="5"><textarea name="free_content"
						style="width: 650px; height: 200px"></textarea></td>
			</tr>
			<tr>
				<td style="text-align: center;">����÷��</td>
				<td colspan="5"><input type="file" name="free_uploadfile"></td>
			</tr>
			<tr>
				<td style="text-align: center;">��й�ȣ</td>
				<td colspan="5"><input type="password" name="free_password"
					maxlength="4"></td>
			</tr>
			<tr style="text-align: center;">
				<td colspan="6"><input type="submit" value="���"
					style="width: 100px"> <input type="button" value="���"
					style="width: 100px" onclick="goReplace('free_List.do')"></td>
			</tr>
		</table>
	</form>
</body>
</html>
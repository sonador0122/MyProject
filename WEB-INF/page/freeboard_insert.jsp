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
				<td colspan="6" style="text-align: center;">작성하기</td>
			</tr>
			<tr>
				<td style="text-align: center;">작성자</td>
				<td><input type="text" name="username" width="100px"></td>
				<td style="text-align: center;">제목</td>
				<td><input type="text" name="free_title" width="500px"></td>
			</tr>
			<tr>
				<td style="text-align: center;">내용</td>
				<td colspan="5"><textarea name="free_content"
						style="width: 650px; height: 200px"></textarea></td>
			</tr>
			<tr>
				<td style="text-align: center;">파일첨부</td>
				<td colspan="5"><input type="file" name="free_uploadfile"></td>
			</tr>
			<tr>
				<td style="text-align: center;">비밀번호</td>
				<td colspan="5"><input type="password" name="free_password"
					maxlength="4"></td>
			</tr>
			<tr style="text-align: center;">
				<td colspan="6"><input type="submit" value="등록"
					style="width: 100px"> <input type="button" value="목록"
					style="width: 100px" onclick="goReplace('free_List.do')"></td>
			</tr>
		</table>
	</form>
</body>
</html>
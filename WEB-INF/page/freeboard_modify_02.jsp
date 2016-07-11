<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	function goReplace(str) {
		location.replace(str);
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<form name="form" method="post" action="free_modify02.do">
		<table border=1 width="800" height="300" align="center">
			<tr>
				<td style="text-align: center;">작성자<input type="hidden"
					name="free_no" value="${free.free_no }"></td>
				<td colspan="5"><c:out value="${free.username}" /><input
					type="hidden" name="username" value="${free.username }"></td>
			</tr>
			<tr>
				<td style="text-align: center;">제목</td>
				<td colspan="5"><input type="text" name="free_title"
					value="${free.free_title }" style="width: 200px" /></td>
			</tr>

			<tr>
				<td style="text-align: center;">내용</td>
				<td colspan="5"><textarea name="free_content"
						style="width: 650px; height: 200px">${free.free_content }</textarea></td>
			</tr>
			<tr>
				<td style="text-align: center;">파일첨부</td>
				<td colspan="5"><c:out value="${free.free_filename }" /><input
					type="hidden" name="free_filename" value="${free.free_filename }"></td>
			</tr>
			<tr>
				<td style="text-align: center;">비밀번호</td>
				<td colspan="5"><input type="password" name="free_password"
					value="${free.free_password }"></td>
			</tr>
			<tr style="text-align: center;">
				<td colspan="6"><input type="submit" value="수정"
					style="width: 80px"> <input type="button" value="취소"
					style="width: 80px" onclick="goReplace('free_List.do')"></td>
			</tr>
		</table>
	</form>
</body>
</html>
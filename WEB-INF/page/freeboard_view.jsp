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
	<form name="form" action="free_List.do">
		<table border=1 width="800" height="300">
			<tr>
				<td colspan="6" style="text-align: center;"><c:out
						value="${free.free_title }" /></td>
			</tr>
			<tr>
				<td style="text-align: center;">�ۼ���</td>
				<td><c:out value="${free.username}" /></td>
				<td style="text-align: center;">�����</td>
				<td><c:out value="${free.free_hiredate }" /></td>
				<td style="text-align: center;">��ȸ��</td>
				<td><c:out value="${free.free_count}" /></td>
			</tr>
			<tr>
				<td style="text-align: center;">����</td>
				<td colspan="5"><c:out value="${free.free_content }" /></td>
			</tr>
			<tr>
				<td style="text-align: center;">����÷��</td>
				<td colspan="5"><a
					href="free_down.do?free_filename=${free.free_filename}"><c:out
							value="${free.free_filename }" /></a></td>
			</tr>
			<tr style="text-align: center;">
				<td colspan="6"><input type="submit" value="���" style="width: 80px">
				<input type="button" value="����" style="width: 80px"
					onclick="goReplace('free_modify_01.do?free_no=${free.free_no}')">
					<input type="button" value="����" style="width: 80px"
					onclick="goReplace('free_delete.do?free_no=${free.free_no}')"></td>
			</tr>
		</table>
	</form>
</body>
</html>
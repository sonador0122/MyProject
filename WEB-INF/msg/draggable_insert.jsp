<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<SCRIPT LANGUAGE="JavaScript">
	// textarea 문자입력 제한
	function CheckStrLength(str, id) {
		var temp;
		var f = document.form1.msg_content.value.length;
		var msglen = 100; //최대 길이
		var tmpstr = "";
		var enter = 0;
		var strlen;

		// 초기 최대길이를 텍스트 박스에 뿌려준다.
		if (f == 0) {
			//document.revGRInfoReg.remain.value = msglen;
		} else {
			for (k = 0; k < f; k++) {
				temp = document.form1.msg_content.value.charAt(k);

				// 입력 라인 제한을 위해 엔터키 횟수 증가
				if (temp == '\n') {
					enter++;
				}

				if (escape(temp).length > 5)
					msglen -= 2;
				else
					msglen--;

				if (msglen <= 0) {
					alert("입력할 수 문자수를 넘었습니다.");
					document.form1.msg_content.value = tmpstr;
					break;
				} else if (enter > 3) {
					alert("5줄까지 쓸 수 있습니다.");
					enter = 0;
					strlen = tmpstr.length - 3;
					document.form1.msg_content.value = tmpstr.substring(0,
							strlen);
					break;
				} else {
					//document.revGRInfoReg.remain.value = msglen;
					tmpstr += temp;
				}

			}
		}
		// 글자입력 Byte 표시   
		var len = 0;
		for (var inx = 0; inx < str.length; inx++) {
			var oneChar = escape(str.charAt(inx));
			if (oneChar.length == 1) {
				len++;
			} else if (oneChar.indexOf("%u") != -1) {
				len += 2;
			} else if (oneChar.indexOf("%") != -1) {
				len += oneChar.length / 3;
			}
		}
		document.getElementById(id).value = len;

	}
</SCRIPT>
</head>
<body>
	<form name="form1" action="msg_insert.do">
		<%
			int user_num = (Integer) session.getAttribute("user_num");
			System.out.println("user_num=" + user_num);
		%>
		<table border="0" width="600px" height="400px">
			<tr>
				<td><input type="hidden" id="user_num" name="user_num"
					value="<%=user_num%>"></td>
			</tr>
			<%
				if (user_num == 0) {
			%>
			<tr>
				<td>회원이름</td>
				<td><input type="text" id="msg_name" name="msg_name" value=""
					style="width: 200px"></td>
			</tr>
			<tr>
				<td>회원이메일</td>
				<td><input type="text" id="msg_email" name="msg_email" value=""
					style="width: 300px"></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td>내용</td>
				<td><textarea id="msg_content" name="msg_content"
						style="width: 300px; height: 200px; size: 100pt;"
						onChange="CheckStrLength(this.value,'bytewrite')"
						onKeyUp="CheckStrLength(this.value,'bytewrite')"
						onblur="CheckStrLength(this.value,'bytewrite')"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">(<input type="text" id="bytewrite"
					style="border: 0px; width: 30px;" value="" readonly> / 100
					bytes)
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="작성완료"></td>
			</tr>
		</table>
	</form>
</body>
</html>
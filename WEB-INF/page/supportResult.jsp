<%@page import="twitter4j.Twitter"%>
<%@page import="facebook4j.Facebook"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%Facebook facebook = (Facebook)session.getAttribute("facebook"); 
Twitter twitter = (Twitter)session.getAttribute("twitter");%>
<script type="text/javascript">
 

function goReplace(str) {
location.replace(str);
}
 

</script>
</head>
<body>
	<form action="writefeed.do" method="POST">
			<div align="right" style=" float:right; margin-bottom: 50px; margin-right: 0">
	<img src="/Eden/res/img/menubar/sptBar03.png" width="80%" align="right" >
			</div>
		
		<center>
			<img
				src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">
			<h3>�Ŀ��� �Ϸ�Ǿ����ϴ�!</h3>
			<center>
			�Ŀ��� �������ּż� �����մϴ�.
			�Ŀ� ������ myPage���� ��ȸ�� �� �ֽ��ϴ�. (��ȸ�� �Ұ�)
			<hr/>
			</center>
		</center>
	
		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<%if(twitter!=null&facebook==null){%>
				<input type="submit" value="Ʈ���� �Խ�">
				<%}else if(facebook!=null&twitter==null){%>
					<input type="submit" value="���̽��ϰԽ�">
				<%}else{%>
					<input type="button" value="�Ѱ������� ����" onclick="goReplace('side_support.do')">
				<%}%>
			</div>	
		</div>
	</form>	
</body>
</html>
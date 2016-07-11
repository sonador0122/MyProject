<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	
</script>
<style type="text/css">
div#sns {
	height: 400px;
}

div div#twitter {
	background-color: gray;
	width: auto;
	height: 100%
}

div div#twitter ul li.favItem {
	border: 1px solid red;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<div id="sns">
		<h3>twitter favList 화면.</h3>
		<div id="twitter">
			<ul>
				<c:if test="${fn:length(favList)<=0 }">
					<li><span>인증통과 안됨</span> <a href="/mobile/sns/twitter.crew">[인증하러
							가기]</a></li>
				</c:if>
				<c:forEach items="${favList}" var="fav" varStatus="s">
					<li class="favItem">${fav}</li>
				</c:forEach>
			</ul>
		</div>

	</div>
</body>
</html>
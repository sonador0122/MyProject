<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	
			<form action="video_update.do?video_no=${videoSelect.video_no}" method="POST">
				
					<legend class="">NO. ${videoSelect.video_no} VIDEO 수정</legend>
					
				
					<div class="control-group">
						<!-- 제목 -->
						<label class="control-label" for="titles">title</label>
						<div class="controls">
							<input type="text" id="titles" name="titles" placeholder="${videoSelect.titles}"
								class="input-xxlarge" required size="100">

						</div>
					</div>
					</br> </br> </br>
					<div class="control-group">
						<!-- 주소-->
						<label class="control-label" for="video_urls">video_urls</label>
						<div class="controls">
							<input type="text" id="video_urls" name="video_urls" placeholder="${videoSelect.video_urls}"
								class="input-xxlarge" required  size="100">

						</div>
					</div>
					</br> </br> </br> </br> </br>
					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<input type="submit" value="수정하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
      
			</form>

</body>
</html>
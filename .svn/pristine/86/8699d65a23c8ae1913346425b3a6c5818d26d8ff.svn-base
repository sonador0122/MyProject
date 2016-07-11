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
	
			<form action="events_update.do?events_no=${eventsSelect.events_no}" method="POST">
				
					<legend class="">NO. ${eventsSelect.events_no} events 수정</legend>
					
				
					<div class="control-group">
						<!-- 제목 -->
						<label class="control-label" for="title">title</label>
						<div class="controls">
							<input type="text" id="title" name="title" placeholder="${eventsSelect.title}"
								class="input-xxlarge" required size="100">

						</div>
					</div>
					<div class="control-group">
						<!-- 내용-->
						<label class="control-label" for="contents">contents</label>
						<div class="controls">
						
                        <textarea rows="10" cols="100" input type="text" id="contents" name="contents" placeholder="${eventsSelect.contents}"></textarea>
						</div>
					</div>
					</br> </br> </br> </br> </br>
					<div class="control-group">
						<!-- 주소-->
						<label class="control-label" for="pic_urls">pic_urls</label>
						<div class="controls">
							<input type="text" id="pic_urls" name="pic_urls" placeholder="${eventsSelect.pic_urls}"
								class="input-xxlarge" required  size="100">

						</div>
					</div>
					</br> </br> </br> </br> </br>
					
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

  <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">

						<li>
                            <a href="#"><i class="icon-chevron-right"></i> 대시보드 Dashboard </a>
                        </li>
                        <li>
                            <a href="#"><i class="icon-chevron-right"></i> 회원관리 </a>
                        </li>
						<li>
                            <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
							<i class="icon-chevron-right"></i>후원관리</a><span style="width: 100%; display: none; float: left;"><br />
							<ul>
							<li>후원통계</li>
							<li>후원DB관리</li>
							</ul><br /></span>
                        </li>
                       <li>
                            <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
							<i class="icon-chevron-right"></i>메세지 관리</a><span style="width: 100%; display: none; float: left;"><br />
							<ul>
							<li>통합 관리</li>
							<li>비속어 관리</li>
							</ul><br /></span>
                        </li>
                            <li>
                            <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
							<i class="icon-chevron-right"></i>데이터관리</a><span style="width: 100%; display: none; float: left;"><br />
							<ul>
							<li>행사DB관리</li>
							<li>비디오DB관리</li>
							</ul><br /></span>
                        </li>
                        <li>	
                            <a href="#"><i class="icon-chevron-right"></i> 방문자통계</a>
                        </li>
                        
                    </ul>
                </div>




</body>
</html>
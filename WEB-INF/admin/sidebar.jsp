<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="sidebar">
		<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">

			<li><a href="adminindex.do"><i class="icon-chevron-right"></i>
					��ú��� Dashboard </a></li>
			<li><a href="adminmember.do"><i class="icon-chevron-right"></i>
					ȸ������ </a></li>
			<li><a
				onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"
				href="javascript:void(0)"> <i class="icon-chevron-right"></i>�Ŀ�����
			</a><span style="width: 100%; display: none; float: left;"><br />
					<ul>
						<li><a href="sptStats.do">�Ŀ����</a></li>
						<li><a href="sptInfo.do">�Ŀ�DB����</a></li>
					</ul> <br /></span></li>
			<li><a
				onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"
				href="javascript:void(0)"> <i class="icon-chevron-right"></i>�޼���
					����
			</a><span style="width: 100%; display: none; float: left;"><br />
					<ul>
						<li><a href="msgAdmin.do">�޼���DB����</a></li>
						<li><a href="badword_form.do">��Ӿ� ����</a></li>
					</ul> <br /></span></li>
			<li><a
				onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';"
				href="javascript:void(0)"> <i class="icon-chevron-right"></i>�����Ͱ���
			</a><span style="width: 100%; display: none; float: left;"><br />
					<ul>
					<li><a href="evtAdmin.do">���DB����</a></li>
							<li><a href="vdoAdmin.do">����DB����</a></li>
					</ul> <br /></span></li>
			<li><a href="adminvisits.do"><i class="icon-chevron-right"></i>
					�湮�����</a></li>

		</ul>
	</div>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <link rel="stylesheet" href="/Eden/res/css/admin/vendors/morris/morris.css">
        <!-- Bootstrap -->
        <link href="/Eden/res/css/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/Eden/res/css/admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="/Eden/res/css/admin/assets/styles.css" rel="stylesheet" media="screen">
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="/Eden/res/css/admin/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script type="text/javascript" src="/Eden/res/js/scripts.js"></script>
           <script src="/Eden/res/css/admin/vendors/jquery-1.9.1.min.js"></script>
        <script src="/Eden/res/css/admin/vendors/jquery.knob.js"></script>
        <script src="/Eden/res/css/admin/vendors/raphael-min.js"></script>
        <script src="/Eden/res/css/admin/vendors/morris/morris.min.js"></script>

        <script src="/Eden/res/css/admin/bootstrap/js/bootstrap.min.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.categories.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.pie.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.time.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.stack.js"></script>
        <script src="/Eden/res/css/admin/vendors/flot/jquery.flot.resize.js"></script>

        <script src="/Eden/res/css/admin/assets/scripts.js"></script>
</head>
<body>
	<tiles:insertAttribute name="admin/header"></tiles:insertAttribute>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3" id="content">
				<tiles:insertAttribute name="admin/sidebar"></tiles:insertAttribute>
			</div>
			<div class="span9" id="content">
				<!-- morris stacked chart -->
				<div class="row-fluid">
					<tiles:insertAttribute name="admin/content"></tiles:insertAttribute>
				</div>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>
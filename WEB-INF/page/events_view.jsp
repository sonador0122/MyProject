<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- 
<link href="/proTemp/res/css/bootstrap.min.css" rel="stylesheet">
<link href="/proTemp/res/css/2-col-portfolio.css" rel="stylesheet"> -->
<link href="/proTemp/res/css/indexScreen/font-awesome.min.css" rel="stylesheet" type="text/css">

<link href='http://fonts.googleapis.com/css?family=Dosis'
	rel='stylesheet' type='text/css'>
    
<title>Insert title here</title>
</head>
<body>
 <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <small>event info</small>
                </h1>
            </div>
        </div>
    
 <div class="row">
		<c:forEach var="events" items="${eventsList}">

		    <div class="col-md-6">
          		<h2><span class="label label-default">* NO.${events.events_no} *</span></h2>
          		<div style="border: 10px; border-color: black;">
                    <img class="img-responsive" src="${events.pic_urls}" alt="" style="border-color: black; border: 10px;"></div>
                     <h3> ${events.title} </h3><hr/>
                 
                    <table>
                 
                    		<tr height="30px">
                    		<td width=100px> <span class="label label-default" style="background-color: #75cbff; font-size: 14px;">시간&장소</span> </td>
                    		<td>${events.evtDate}  </td>
                    	</tr>
                    <tr  height="30px">
                    		<td> <span class="label label-default" style="background-color: #75cbff; font-size: 14px;">내용</span> 	 </td>
                    		<td>${events.contents} </td>
                    	</tr>
                    
                    <tr  height="30px">
                    		<td>
                    		<span class="label label-default" style="background-color: #75cbff; font-size: 14px;">홈페이지</span></td>
                    		<td><a href="${events.siteUrl}">${events.siteUrl}</a> </td>
                    	</tr>
                    
                    </table>
   			    <hr/><hr style="margin: 10px"/><hr/>
            </div>
     
         
		</c:forEach>	</div>

    <!-- <script src="/proTemp/res/js/jquery-1.11.0.js"></script> -->
</body>
</html>
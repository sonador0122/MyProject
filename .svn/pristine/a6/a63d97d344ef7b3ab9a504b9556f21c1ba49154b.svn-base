<%@page import="dto.VideoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Galleria Classic Theme</title>
        <style> 

            /* Demo styles */
            html,body{background-color: black;margin:0;}
            
            .content{color:#777;font:12px/1.4 "helvetica neue",arial,sans-serif;width:80%;margin:20px auto;}
            h1{font-size:12px;font-weight:normal;color:#ddd;margin:0;}
            p{margin:0 0 20px}
            a {color:#22BCB9;text-decoration:none;}
            .cred{margin-top:20px;font-size:11px;}

            /* This rule is read by Galleria to define the gallery height: */
            #galleria{height:800px}

        </style>

        <!-- load jQuery -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>

        <!-- load Galleria -->
        <script src="/Eden/galleria/galleria-1.3.6.min.js"></script>
    </head>
<body>
    <div class="content">
        <div id="galleria">
        <c:forEach var="video" items="${videoList}">
           <a href="${video.video_urls }">
           <span class="video" 
           data-title = "${video.video_no }"
           data-description = "${video.titles }"/>           
           </a>
        </c:forEach>   
        </div>
    </div>

    <script>

    // Load the classic theme
    Galleria.loadTheme('/Eden/galleria/classic/galleria.classic.min.js');

    // Initialize Galleria
    Galleria.run('#galleria');

    </script>
    </body>
</html>
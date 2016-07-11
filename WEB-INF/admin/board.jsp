<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#box2 {
		float: left;
		width: 20%;
		padding: 10px;
		display: inline;
		border: 1px solid orange;
		margin-bottom:10px;	
	}
	
	#box3 {
		float: right;
		width: 75%;
		padding: 10px;
		display: inline;
		border: 1px solid lime;
		margin-bottom:10px;	
	}
</style>
<link href="/Eden/common/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Eden/res/js/jquery-1.11.0.js"></script>


<script type="text/javascript">
	  $(document).ready(function(){
	       $("#labs div").hide();
	       $("#div${param.no}").show();
	     
	       $('.menu').css('cursor','pointer').click(function() {
	         location.href = "/openeg/test/test.do?no="+$(this).attr('no');
	       });
	     });
	 function postPopUp(formName){ 
		 fm=document.getElementById(formName);
		 window.open("","viewer","width=1000, height=700, menubar=no,status=yes,scrollbars=no");
	     fm.action="forward_test.do";
	     fm.target="viewer";
	     fm.method="post";
	     fm.submit();
	}
</script>
 


</head>
<body>
<div id="container">
		
  <div class="hint"  id="div3"> 
     <form action="adminLoginTest.do"  id="form4"> 
         ID: <input type="text" name="id"  id="data4-1" size="60">  
         <input type="submit"  id="button4"  value="실행"  >
     </form>
  </div>
  
  <div class="hint" id="div4">
     <form action="adminQuertView.do"  id="form5">
       <select  name="data"  id="data5">
              <option value="0">--- show File1.txt ---</option>
              <option value="1">--- show Dir ---</option>
        </select>  
        <input type="button"   id="button5" value="실행"  >
     </form>
  </div>
   
  <div  id="div5">
     <form action="adminQuery.do"  id="form6">
         이름: <input type="text" name="name"  id="data6" size="50">  
          <input type="button"   id="button6" value="실행"  >          
          
     </form>
  </div>
   
   <div id="div6">
     <form action="adminPostViewer.do"  id="form3">
     <input type="text" name="data"  id="data3" size="50"> <input type="button"   id="button3"  value="실행"  >
   &lt;script&gt;alert("xss");&lt;/script&gt;   
      
     </form>
     <form action="adminPostMultiViewer.do"  id="form20">
      <input type="text" name="data"  id="data20" size="50">  
       <input type="button"   id="button20"  value="실행"  > 
     </form>
  </div>
    <div   id="div8">
       <form action="adminSendViewer.do"  name="form8" id="form8">
         <select  name="data"  id="data8">
              <option value="http://www.naver.com">--- 네이버 ---</option>
              <option value="http://www/nate.com">--- 네이트 ---</option>
              <option value="http://www.daum.net">--- 다음 ---</option>
         </select> <input type="button"  value="이동"  onClick="postPopUp('form8')"> 
       
        </form>
     </div>
        <div id="div12">
       <form action="adminAccessControl.do"  id="form12">
           <select  name="action"  id="data12">
               <option value="view">-- 정보조회 --</option>
               <option value="edit">-- 고객정보 생성 --</option>     
               <option value="modify">-- 전화번호 변경 --</option>           
   </select> <input type="text" name="name"  id="data11" size="20"> 
    <input type="button" id="button12" value="실행"  >
        
        </form>
     </div>
    
     <div  id="div14">
       <form action="adminReceiveViewer.do"  id="form14">
       <input type="text" name="data"  id="data14" size="40">  
       <input type="button" id="button14" value="실행"  > 
       </form>
     </div>
     


</div>
</div>
</div>
</div>
</div>
     
 <script type="text/javascript"> 
 $( 
   function() { 
 	  $('#button1').click( 
	    	     function() { 
	    	    	
// 	    	    	 var formData={data:Base64.encode(form1.data.value)};
                     var formData = $("#form1").serializeArray();  
 	    	    	 var URL = $("#form1").attr("action");  
 	    	    	 $('#result').empty(); 
  	    	         $.post(URL,  
     	    			   formData,   
  	    			       function(data, textStatus, jqXHR)     {        	    		             
	    	    		           $('#result').append(data); 
	    	    		        } 
	     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
	    	    		    	   $('#result').append("요청처리 실패"); 
	    	    	  }); 
	    }); 
 
 	 $('#button2').click( 
    	     function() { 
    	    	 var formData = $("#form2").serializeArray();  
	    	     var URL = $("#form2").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
    	    		           $('#result').append(data); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 

 	 $('#button3').click( 
    	     function() { 
    	    	 var formData = $("#form3").serializeArray();  
	    	     var URL = $("#form3").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {  
	    	        	       var uri_dec = decodeURIComponent(data);
    	    		           $('#result').append(uri_dec); 
	    			    	  // $('#result').append(data); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 
 	 
 	$('#button4').click( 
    	     function() { 
    	    	 var formData = $("#form4").serializeArray();  
	    	     var URL = $("#form4").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
    	    		           $('#result').append(data); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 
 	
 	$('#button5').click( 
   	     function() { 
   	    	 var formData = $("#form5").serializeArray();  
	    	 var URL = $("#form5").attr("action");  
	    	 $('#result').empty(); 
	    	 $.post(URL,  
	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
   	    		           $('#result').append(data); 
   	    		        } 
    	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
   	    		    	   $('#result').append("요청처리 실패"); 
   	    	  }); 
   }); 
 	
   $('#button6').click( 
 		   function() { 
 		   	    	 var formData = $("#form6").serializeArray();  
 			    	 var URL = $("#form6 ").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button7').click( 
 		   function() { 
 		   	    	 var formData = $("#form7").serializeArray();  
 			    	 var URL = $("#form7").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button8').click( 
	   function() { 
	   	    	 var formData = $("#form8").serializeArray();  
		    	 var URL = $("#form8").attr("action");  
		    	 $('#result').empty(); 
		    	 $.post(URL,formData,   
		    			function(data, textStatus, jqXHR)     {  
		    		           window.open(data);
// 	   	    		           $('#result').append(data); 
	   	    		    } 
	    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
	   	    		    	   $('#result').append("요청처리 실패"); 
	   	    	         }); 
	   });
 	
 	$('#button9').click( 
  		   function() { 
  		   	    	 var formData = $("#form9").serializeArray();  
  			    	 var URL = $("#form9").attr("action");  
  			    	 $('#result').empty(); 
  			    	 $.post(URL,formData,   
  			    			function(data, textStatus, jqXHR)     {        	    		             
  		   	    		           $('#result').append(data); 
  		   	    		    } 
  		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
  		   	    		    	   $('#result').append("요청처리 실패"); 
  		   	    	         }); 
  		   });
 	
 	$('#button10').click( 
 		   function() { 
 		   	    	 var formData = $("#form10").serializeArray();  
 			    	 var URL = $("#form10").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button11').click( 
  		   function() { 
  		   	    	 var formData = $("#form11").serializeArray();  
  			    	 var URL = $("#form11").attr("action");  
  			    	 $('#result').empty(); 
  			    	 $.post(URL,formData,   
  			    			function(data, textStatus, jqXHR)     {        	    		             
  		   	    		           $('#result').append(data); 
  		   	    		    } 
  		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
  		   	    		    	   $('#result').append("요청처리 실패"); 
  		   	    	         }); 
  		   });
 	
 	$('#button12').click( 
   		   function() { 
   		   	    	 var formData = $("#form12").serializeArray();  
   			    	 var URL = $("#form12").attr("action");  
   			    	 $('#result').empty(); 
   			    	 $.post(URL,formData,   
   			    			function(data, textStatus, jqXHR)     {        	    		             
   		   	    		           $('#result').append(data); 
   		   	    		    } 
   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
   		   	    		    	   $('#result').append("요청처리 실패"); 
   		   	    	         }); 
   		   });
 	
 	$('#button13').click( 
    		   function() { 
    		   	    	 var formData = $("#form13").serializeArray();  
    			    	 var URL = $("#form13").attr("action");  
    			    	 $('#result').empty(); 
    			    	 $.post(URL,formData,   
    			    			function(data, textStatus, jqXHR)     {        	    		             
    		   	    		           $('#result').append(data); 
    		   	    		    } 
    		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
    		   	    		    	   $('#result').append("요청처리 실패"); 
    		   	    	         }); 
    		   });
 	$('#button14').click( 
 		   function() { 
 		   	    	 var formData = $("#form14").serializeArray();  
 			    	 var URL = $("#form14").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	$('#button20').click( 
 		   function() { 
 		   	    	 var formData = $("#form20").serializeArray();  
 			    	 var URL = $("#form20").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	$('#button21').click( 
 		   function() { 
 		   	    	 var formData = $("#form21").serializeArray();  
 			    	 var URL = $("#form21").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {     			    	
 		   	    		           document.write(unescape(data));
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
});

    	    	
</script>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />

<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
			 <link rel="stylesheet" href="/resources/demos/style.css">
			 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
			 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="autocompleter.js"></script>
			
<script>
			 $(document).ready(function() {
			       $(function() {
			               $("#searchname").autocomplete ({     
			             
			            	 /*  window.alert("searchname");  */
			            	    source : function(request, response) {
			               $.ajax({
			                       url : "/spring_1/search",
			                       type : "GET",
			                       data : {
			                    	   searchname: request.term
			                       },
			                       dataType : "json",
			                       success : function(data) {
			                               response(data);
			                       }
			               });
			       } 
			       
			       
			});
			});
			});
</script>		
				
	
</head>
<body>

<div class="container_fluid">

    <div style="background: #3b5998">
    
        <div class="row">
        <%-- <form:form name="search" method="GET" action="/spring_1/search" modelAttribute="Searchbean" id="for"> --%> 
        
        
        <div class="col-md-1 "></div>
           <div class="col-md-6">
           <div class="ui-widget">
<input type="text" name="searchname" id="searchname" placeholder="search facebook"  style="margin-top: 9px;width: 65%;margin-bottom: 9px ;width: 80%; margin-left: 0px">
        
        
        <a href="search_for_frnd">
          <label style="margin-top:5px;color: white"><u>See more</u></label>
        </a>
          </div>
            </div>
           
<div class="col-md-1"></div>
<div class="col-md-3">
<img src= ${img} height="30" style="margin-top: 8px"  width="45">
<label style="margin-top:5px;color: white">${fname} ${lname}
</label></div>
            
           </div> </div>
             
           </div>
<div class="container_fluid">
    <div style="background: #e6eaf2">
        <div class="row">
          <div class="col-md-2"  ><br>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <img src=${img} height="30"  style="margin-right: 20px" width="35">
          <label style="font-size: 14px"> ${fname} ${lname}
 </label>
          <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
           <label style="font-size: 14px"> Edit profile </label>
         <br>
          <a href="approve_rqst">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <span class="glyphicon glyphicon-edit"></span>
        </a>
            <label style="font-size: 14px"> Approve friend </label>
             <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="search_unfriend">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        <label style="font-size: 14px"> Search friends </label>
           </div>
           <div class="col-md-8"  >
             <div class="container" style="background: white; margin-top: 11px;width: 100%;height: 189px;">
               <div class="row">
               <div class="col-md-1"><img src="images/down.jpg" height="20"  style="margin-right: 20px" width="25"></div>
               <div class="col-md-3">
               <label style="font-size: 14px"><b>update status</b> </label></div>
               <div class="col-md-1">
               <img src="images/liz.jpg" height="20"  style="margin-right: 20px" width="25"></div>
               <div class="col-md-3">
               <label style="font-size: 14px;color: blue"><b>Add photos/videos</b> </label></div>
               <div class="col-md-1">
               <img src="images/notes.jpg" height="20"  style="margin-right: 20px" width="25"></div>
               <div class="col-md-3">
               <label style="font-size: 14px;color: blue"><b>write note</b> </label></div>
               </div><hr style="color:#d4d8dd">
               <img src="images/imag.jpg" height="30" style="margin-top: 8px"  width="45">
               <label style="color: #cfd2d6">whats on your mind?</label></div><br>
               <div class="container" style="background: white;width: 670px;max-width: 100%;height: 229px;"></div></div>
                <div class="col-md-2"  >
                <div class="container" style="background: blue; margin-top: 12px;
height: 438px;color:#cfd2d6 ">your ads</div>
</div></div>
</div>

</div>
</body>
</html>
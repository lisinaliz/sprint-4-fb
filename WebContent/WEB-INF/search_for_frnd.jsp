<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
<sql:setDataSource
		var="myDS"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/facebook"
		user="root" password=""
	/>
	
	<sql:query var="listUsers"	dataSource="${myDS}">
		SELECT * FROM user;
	</sql:query>
<body>

<div class="container_fluid">

    <div style="background: #3b5998">
    
        <div class="row">
        
        <%
	                  System.out.println(session.getAttribute("fname"));
	                 System.out.println(session.getAttribute("lname"));
	                  %>
        
        <div class="col-md-1 "></div>
           <div class="col-md-6">
           <div class="ui-widget">
<input type="text" name="searchname" id="searchname" placeholder="search facebook"  style="margin-top: 9px;width: 65%;margin-bottom: 9px ;width: 80%; margin-left: 0px">
        
          </div>
            </div>
           
<div class="col-md-1"></div>
<div class="col-md-3">
<img src= ${img} height="30" style="margin-top: 8px"  width="45">
<label style="margin-top:5px;color: white">${fname} ${lname}
</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" class="btn btn-primary" style="margin-height: -12px" id="btnlogin" value="Log out" id="out">
</div>
            
           </div> </div>
             
           </div>
<div class="container_fluid">
    <div style="background: #e6eaf2">
        <div class="row">
          <div class="col-md-3"  ><br>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <img src=${img} height="30"  style="margin-right: 20px" width="35">
          <label style="font-size: 14px">${fname} ${lname}
 </label>
          <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
           <label style="font-size: 14px"> Edit profile </label>
         <!--  <a href="#">
          <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <span class="glyphicon glyphicon-edit"></span>
        </a> -->
            <!-- <label style="font-size: 14px"> Approve friend </label>
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="search_unfriend">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        <label style="font-size: 14px"> Search friends </label>
             --> 
            
            
           </div>
           <div class="col-md-5"  >
           <div class="container" style="background: white; margin-top: 11px;width:100%">
             <!-- <div class="container" style="background: white; margin-top: 11px;width: 100%;height: 189px;"> -->
            
               <div class="row">
                <div class="col-md-12"  >
                
               
               </div>
               </div>
               <hr>
               <form:form name="search" method="POST" action="/spring_1/add" modelAttribute="Searchbean" id="for"> 
                <c:forEach var="user" items="${listUsers.rows}">
               <div class="row">
               <div class="col-md-2"><img src=<c:out value="${user.image}" /> height="20"  style="margin-right: 20px" width="25"></div>
               <div class="col-md-3">
               <label style="font-size: 14px"><b><c:out value="${user.vchr_firstname}" /> &nbsp; <c:out value="${user.vchr_lastname}" /></b> </label></div>
               <input type="hidden" name="user2id"  value="${user.pk_int_user_id}" >
               <div class="col-md-7">
               
              <a href="/spring_1/add?id=<c:out value="${user.pk_int_user_id}"/>" style="color:grey;"><span class="glyphicon glyphicon-user" style="color:grey;" ></span>
<i class="glyphicon glyphicon-plus" style="color:grey;"></i>Add friend</a></div>
<div class=" col-md-2">

               </div></div>
               <hr>
               </c:forEach>
               </form:form>
               
               <!-- <div class="row"> 
                
               
               <div class="col-md-2"><img src="images/down.jpg" height="20"  style="margin-right: 20px" width="25"></div>
               <div class="col-md-3">
               <label style="font-size: 14px"><b>Name</b> </label></div>
               <div class="col-md-7">
               
               <input type="submit"   value="Confirm"   align="center" style="color:white; background-color:#3b5998; button-radius:6px"> 
               <input type="submit"   value="Delete Request"   align="center" style="color:#3b5998; background-color:white; button-radius:6px"> 
               
               </div>
               </div>-->
         </div></div> 
                
                <div class="col-md-4" style="background: white; margin-top: 12px;
height: 438px;color:black ; height: 602px;">TRENDING  
&nbsp;&nbsp;&nbsp;
<i class="glyphicon glyphicon-cloud"></i>&nbsp;&nbsp;&nbsp;
<i class="glyphicon glyphicon-remove"></i>&nbsp;&nbsp;&nbsp;
<i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;&nbsp;
<i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;
<i class="glyphicon glyphicon-thumbs-up"></i>


</div>



</div>
<div>
<div class="row">
          <div class="col-md-4"  >
          </div>
          <div class="col-md-4"  >
<ul class="pagination">
   <li><a href="#">1</a></li>
   <li><a href="#">2</a></li>
   <li><a href="#">3</a></li>
   <li><a href="#">4</a></li>
   <li><a href="#">5</a></li>
 </ul>
 </div>
 <div class="col-md-4"  ></div>
 </div>
</div>
</body>
</html>
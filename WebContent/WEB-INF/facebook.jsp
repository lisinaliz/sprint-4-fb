<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <jsp:useBean id="user" class="com.bean.Loginbean" scope="session" />
      <jsp:useBean id="use" class="com.dbconnection.Com" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready( function(){
	$("#register").submit(function(){
		
			
		  
		  if(ok==false)
			  {
			  return false;
			  }
		  else
			  {
			  return true;
			  }
	          
	 });
	
	$("#log").submit(function(){
		
		
		  
		  if(lg==false)
			  {
			  return false;
			  }
		  else
			  {
			  return true;
			  }
	          
	 });
		/* $("register").submit();
  
  $(".nick").hide();
  $(".char").hide();
    $("#btnlogin").click(function(){
 $("#register").submit();
var username=$("#maill").val();
  

  $.ajax(
    { 
      'url':'http://services.trainees.baabtra.com/LoginService/Login.php',
      'Datatype':'jsonp',
      'Data':{Email:name,Password:pswd},
      Success:function(data)
      {
        $("#contact").html(data);
      },

      error:function()
      {
        alert("error");
      }


    });

   
   if (username =="")
   {
    $(".nick").show();
   }
   



var username1=$("#Password").val();
  
   
   if (username1 =="")
   {
    $(".char").show();

   }
else

   {
   
    document.write("your in !!!!!!!!!!!   Enjoy  the world largest social network");
   }
        
}); */

$("#pass").click(function(){
	 
	lg=true;
	
var user=$("#maill").val();
  
   
   if (user=="")
   {
    
    $("#errorm").text("Required ");
    lg=false;
   }
    else

   {
   
    $("#errorm").text("");
    lg=true;
      
      }  
   
		
	var user1=$("#password").val();
	  
	   
	   if (user1=="")
	   {
	    
	    $("#errorms").text("Required ");
	    lg=false;
	   }
	    else

	   {
	   
	    $("#errorms").text("");
	    lg=true;
	      
	      } 
	   return lg;
}); 

$("#account").click(function(){
 
	ok=true;
	
var username2=$("#firstname").val();
  
   
   if (username2 =="")
   {
    
    $("#errormessage").text("Required ");
    ok=false;


   }
   else if(username2.length <=3)
   {

      $("#errormessage").text("minimum length is 4");
      ok=false;
   }
   
else

   {
   
    $("#errormessage").text("");
    ok=true;
      
      }  
    
   



var username3=$("#lastname").val();
  
   
   if (username3 =="")
   {
    
    $("#errormessage1").text("please enter your last name");
    ok=false;
   }
   
else

   {
   
    $("#errormessage1").text("");
      ok=true;
      }  

var username4=$("#phonenumber").val();
  
   
   if (username4 =="")
   {
    
    $("#errormessage2").text("please enter your phonenumber");
    ok=false;
   }
   
   else if(username4.length < 10)
   {

      $("#errormessage2").text("minimum length is 10");
      ok=false;
   }
else

   {
   
    $("#errormessage2").text("");
    ok=true;
      
      }  


   

  
var username5=$("#email").val();

var atpos = username5.indexOf("@");
var dotpos = username5.lastIndexOf(".");

if(atpos<1 || dotpos<atpos+2 || dotpos+2>=username5.length)

{

$("#errormessage3").text("Not Valid Gmail");
ok=false;
}
   
else if (username5 =="")
   {
    
    $("#errormessage3").html("please enter your email");
    ok=false;
   }
   
else

   {
   
    $("#errormessage3").text("");
    ok=true;
      
      } 

var usern=$("#ema").val();
if(usern==username5)
{

	$("#errema").text(" ");
	ok=true;
	}
else
{

	$("#errema").text("Re-enter correctly");
	ok=false;
	}
var username6=$("#pass").val();
  
val_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
ok=true;

   if (username6 =="")
   {
    
    $("#errormessag4").text("please enter your password");
    ok=false;
   }
  else if(!val_password.test(username6))
        
   	{
	  $("#errormessag4").text("Invalid Format");
	   	ok=false;
	   	}

   /* else

   {
   
    $("#errormessag4").text("");
    ok=true;
      
      } 
    */ 
   
   $('input[type="file"]').change(function(event) {
   	maxsize=5;
       var _size = this.files[0].size;
       var fSExt = new Array('Bytes', 'KB', 'MB', 'GB'),
       i=0;while(_size>900){_size/=1024;i++;}
     var exactSize = (Math.round(_size*100)/100)+' '+fSExt[i];
     var imgsize=(Math.round(maxsize*100)/100)+' '+fSExt[i];
       alert(imgsize);
       
        if(exactSize>imgsize)
       	{
       	$("#imgerror").text("Maximum size of ProfilePIc shuld be 5MB");
	   ok=false;
       	}
       else{
       $("#imgerror").text("");
   ok=true;
       }
        return ok;
   });
   
   
   var date=$("#Day").val();
   var month=$("#Month").val();
   var year=$("#Year").val();
   dob=month+"/"+date+"/"+year;
   var minage=13;
   var today = new Date();
        var  dob1=new Date(dob);
     
     var age = today.getFullYear()-dob1.getFullYear();
   if(date==""||month==""||year=="")
	   
   {
   $("#dys").text("please Select your DOB");
   ok=false;
   }
   else  if(age<minage)
   {
   $("#dys").text("Minimum age for joining facebook is 13 years");
   ok=false;
   }
   else
   {
   $("#dys").text("");
   ok=true;
   }
   var gender=$('#gender:checked').val()?true:false;
   if(gender==false)
   {
   $("#fm").text("Plz Select your gender");
   ok=false;
   }
   else{
   $("#fm").text("");
   ok=true;
   }
    
return ok;
}); 
});
</script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>  
<header>
<div class="container_fluid">
    <div style="background: #3b5998">
        <div class="row">
        <form:form name="loginform" method="POST" action="/spring_1/login" modelAttribute="Loginbean" id="log">

        
           <div class="col-md-5 ">
            <div style="color: white;font-family:verdana ;font-size: 70px">
                 <label>facebook</label>
            </div>
           </div>

           <div class="col-md-3">
             <div style="color: white">
               <label>Email</label><br>
                <input type="text" id="maill" name="ema" ><br>
                <label Id= "errorm" style="color: red" ></label>

              </div>
           </div>
           <div class="col-md-3">
             <div style="color: white">
               <label>Password</label><br>
                <input type="Password" id="Password" name="word"><br>
                <label style="color: white"><u style="color: white">forgotten password?</u></label><br>
                <label Id= "errorms" style="color: red" ></label>
                
              </div>
           </div>
           <div class="col-md-1">
         
   <input type="submit" class="btn btn-primary" style="margin-height: -12px" id="btnlogin" value="login" id="pass">

           
           </div>

    </form:form>
             </div>    
           </div>
        </div>
  

     </div>
     
</div>
</header>




<div class="container_fluid" style=" font-family: times new roman">
    <div style="background: #c1d1f0">
        <div class="row">
  <form:form action="/spring_1/submit" modelAttribute="Userbean" method="post" enctype="multipart/form-data" id="register">
        
       
           <div class="col-md-6">
           
           <label><h4> <b>connect with friends and the world around you on facebook </b></label></h4><br>
            <img src="<c:url value="/images/connect.png" />"/>
           </div>
        <div class="col-md-6">
         <label><h3 style="font-family: bold"><b>create an account</b></h3></label><br>
         <label><h4><b>it's free and always will be</b></h4></label><br>

         <input type="text" placeholder="first name" id="firstname" size="48" name="fname"><br>
         <label Id= "errormessage" style="color: red"></label><br>
     <input type="text" id="lastname" placeholder="last name" size="48" name="lname"><br>
              <label Id= "errormessage1" style="color: red"></label><br>
    <input type="text" Id="phonenumber" placeholder="mobilenumber" name="phno" size="48" maxlength="10"><br>
    <label Id= "errormessage2" style="color: red"></label><br>

     <input type="text"  Id="email" placeholder="email" size="48"  name="email"><br>
     <label Id= "errormessage3" style="color: red" ></label><br>
<input type="text"  Id="ema" placeholder="Re-enter email" size="48"  name="ema"><br>
     <label Id= "errema" style="color: red" ></label><br>
     <input type="password" Id="pass" placeholder="password" size="48" name="pword"><br><br>
<label Id= "errormessag4" style="color: red" ></label><br>
   

<input type="file" name="file" value="upload photo" /><br>
<label Id= "imgerror" style="color: red" ></label><br>


            <h3 style="font-family: times new roman"><b>Birthday</b></h3>
            
<label Id= "dys" style="color: red" ></label><br>

       
            <select id="Day" name="day">    
                 <option value="">Date</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                  
                </select>
                  <select id="Month" name="month">
                    <option value="">Month</option>
                    <option value="01">January</option>
                    <option value="02">Feb</option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">may</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                  <select id="Year" name="year">
                    <option value="">Year</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>
                    <option value="1993">1993</option>
                    <option value="1999">1999</option>
                    <option value="1990">1990</option>
                    <option value="1981">1991</option>
                    <option value="1982">1992</option>
                    <option value="1983">1993</option>
                    <option value="1984">1994</option>
                    <option value="1989">1989</option>
                    <option value="1988">1988</option>
                    <option value="1987">1987</option>
                     <option value="2010">2010</option>
                     <option value="2008">2008</option>
                     <option value="2005">2005</option>
                     <option value="2000">2000</option>
                </select>
              
                  <font size="2" color="blue">Why do I need to provide my date of birth</font> <br>
                  <label Id= "fm" style="color: red" ></label><br>
              <input type="Radio" id="gender" value="female" name="gender"> Female
              <input type="Radio" name="gender" value="male" id="gender" > Male<br>
              <font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font><br>
              <font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br>
              <hr>
              <input type="submit"   value="Create an account"  id="account" align="center" style="color:white; background-color:green; button-radius:6px"> 

               
            </div></div>  
            

	</div>
	
 
	</div>
	</form:form>
 
</section>
</body>
</html>

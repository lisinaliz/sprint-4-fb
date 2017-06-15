<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready( function(){

  
  $(".nick").hide();
  $(".char").hide();
    $("#btnlogin").click(function(){

var username=$("#maill").val();
  
   
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
        
});

$("#account").click(function(){

var username2=$("#firstname").val();
  
   
   if (username2 =="")
   {
    
    $("#errormessage").html("please enter your first name");
   }
   else if(username2.length <=3)
   {

      $("#errormessage").html("minimum length is 4");
   }
   
else

   {
   
    $("#errormessage").html("");
      
      }  
    



var username3=$("#lastname").val();
  
   
   if (username3 =="")
   {
    
    $("#errormessage1").html("please enter your last name");
   }
   
else

   {
   
    $("#errormessage1").html("");
      
      }  

var username4=$("#phonenumber").val();
  
   
   if (username4 =="")
   {
    
    $("#errormessage2").html("please enter your phonenumber");
   }
   
   else if(username4.length < 10)
   {

      $("#errormessage2").html("minimum length is 10");
   }
else

   {
   
    $("#errormessage2").html("");
      
      }  

var username5=$("#email").val();

  
   
   if (username5 =="")
   {
    
    $("#errormessage3").html("please enter your email");
   }
   
else

   {
   
    $("#errormessage3").html("");
      
      }  
var username6=$("#pass").val();
  
   
   if (username6 =="")
   {
    
    $("#errormessag4").html("please enter your password");
   }
   

  
else

   {
   
    $("#errormessag4").html("");
      
      } 
});   

}); 


</script>
  </script>
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>  
<header>
<div class="container_fluid">
    <div style="background: #3b5998">
        <div class="row">
           <div class="col-md-5 ">
            <div style="color: white;font-family:verdana ;font-size: 70px">
                 <label>facebook</label>
            </div>
           </div>

           <div class="col-md-3">
             <div style="color: white">
               <label>Email</label><br>
                <input type="text" id="maill">
               

              </div>
           </div>
           <div class="col-md-3">
             <div style="color: white">
               <label>Password</label><br>
                <input type="Password" id="Password">
              </div>
           </div>
           <div class="col-md-1">
         
   <button type="button" class="btn btn-primary" style="margin-height: -12px" id="btnlogin">login</button>

           
           </div>

    
             </div>    
           </div>
        </div>
  

     </div>
</div>
</header>
<div class="alert-danger nick">please enter your mail ID</div>
<div class="alert-danger char">Please enter password</div>
<section>
<div class="container_fluid" style=" font-family: times new roman">
    <div style="background: #c1d1f0">
        <div class="row">
           <div class="col-md-6">
           <label><h4> <b>connect with friends and the world around you on facebook </b></label></h4><br>
            <img src="images/images9.jpg" width="400">
           </div>
        <div class="col-md-6">
         <label><h3 style="font-family: bold"><b>create an account</b></h3></label><br>
         <label><h4><b>it's free and always will be</b></h4></label><br>

         <input type="text" placeholder="first name" id="firstname" size="48"><br>
         <label Id= "errormessage" style="color: red"></label><br>
     <input type="text" id="lastname" placeholder="last name" size="48"><br>
              <label Id= "errormessage1" style="color: red"></label><br>
    <input type="text" Id="phonenumber" placeholder="mobilenumber" size="48" maxlength="10"><br>
    <label Id= "errormessage2" style="color: red"></label><br>

     <input type="text"  Id="email" placeholder="email" size="48"><br>
     <label Id= "errormessage3" style="color: red"></label><br>

     <input type="password" Id="pass" placeholder="password" size="48"><br><br>
<label Id= "errormessag4" style="color: red"></label><br>

            <h3 style="font-family: times new roman"><b>Birthday</b></h3>
            

       
            <select id="Day" >    
                 <option value="">Date</option>
                    <option value="sun">Sunday</option>
                    <option value="mon">Monday</option>
                    <option value="tue">Tuesday</option>
                    <option value="wed">Wednesday</option>
                    <option value="thu">Thursday</option>
                    <option value="fri">Friday</option>
                    <option value="sat">Saturday</option>
                </select>
                  <select id="Month">
                    <option value="">Month</option>
                    <option value="jan">Jan</option>
                    <option value="feb">feb</option>
                    <option value="march">March</option>
                    <option value="april">april</option>
                    <option value="may">may</option>
                    <option value="june">june</option>
                    <option value="july">july</option>
                </select>
                  <select id="Year">
                    <option value="">Year</option>
                    <option value="90">1990</option>
                    <option value="91">1991</option>
                    <option value="92">1992</option>
                    <option value="93">1993</option>
                    <option value="94">1994</option>
                    <option value="89">1989</option>
                    <option value="88">1988</option>
                </select>
              
                  <font size="2" color="blue">Why do I need to provide my date of birth</font> <br>
              <input type="Radio" id="gender" value="female"> Female
              <input type="Radio" name="gender" value="male"> Male<br>
              <font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font><br>
              <font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br>
              <hr>
              <input type="submit"   value="Create an account"  id="account" align="center" style="color:white; background-color:green; button-radius:6px"> 

               
            </div></div>   
 

	
</section>
</head>
<body>

</body>
</html>

 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
	<title></title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
  
<header>
<div class="container_fluid">


    <div style="background: #3b5998">
        <div class="row" style="margin-right: 450px;
margin-left: -15px">
        <div class="col-md-1 "></div>
           <div class="col-md-2 "><br>
            <div style="color: white;font-family:verdana ;font-size: 20px">
                 <label>facebook</label>
            </div>
           </div>

           <div class="col-md-2"><br>
        
        <button type="button"  style="margin-height: -12px ; background-color:green; color:white; align-self: center" button-radius:2px id="btnlogin">signup</button>

           
           </div>



</div></div></div></header>
 
<body>
<div class="container_fluid">
<form:form name="loginform" method="POST" action="/spring_1/login" modelAttribute="Loginbean" id="log">
    <div style="background: #e6eaf2">
    <div class="row">
      <div class="col-md-2"></div>
       <div class="col-md-8">
     <div class="container  element" style="align-content: center;border-color:#595b5e; margin-top: 113px;margin-bottom: 46px;size: 500px;background: white">
     <div class="row"> <label style="color: black; text-align: left;margin-top:100px"><b> facebook login</label></div><hr style="color: #b0b1b2">
     </b><div class="row">

      <div class="col-md-3">
            <div style="color: black;font-family:times new roman ;font-size: 15px">
                 <label>Login as: </label>
            </div>
           </div>

         <div class="col-md-3">
<img src="images/imag.jpg" height="50"   width="75"><br>
<input type="hidden" value=${email } id="maill" name="ema">
<label style="color: blue; font-size: 13px">Not ${fname}?</label>

            </div>
             <div class="col-md-3">
             
<label><b>${fname} ${lname}</b></label><br>

     <label>${email}</label>

           
     </div></div>
     <div class="row">
           <div class="col-md-2">
            <div style="color: black;font-family:times new roman ;font-size: 15px">
                 <label>password: </label>
            </div></div>
           
          <div class="col-md-5">
                   <input type="password"  style="border color: blue" id="Password" name="word"></div>
          </div>
          <div class="col-md-5">
          <div class="alert alert-danger" style="margin-right: -291px;margin-top: -38px;padding-top: 0;
    width: 100%;position: absolute;margin-left: 316px">
     password you've enterd is wrong.forgotten password?
           </div>          </div>
          <div class="row">
<div class="col-md-3"></div>
<div clss="col-md-3">
<input type="checkbox" name="vehicle" value="Bike">keep me logged in
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btn btn-primary" style="margin-height: -12px" id="btnlogin" value="login" id="pass">
 <label style="color: blue">or sign up for facebook</label><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label style="color: blue">forgotten password?</label>
</div></div>
        </div></div></div></div></div></div></div></div>
  </form:form>
</body>
</html>
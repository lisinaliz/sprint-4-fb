package com.spring;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.portlet.ModelAndView;

import com.bean.*;
import com.dbconnection.Com;

@Controller
public class Logincontroller
{
@RequestMapping(value="/login" ,method = RequestMethod.POST)
public String submit(HttpServletRequest request, HttpServletResponse response,Model model, @ModelAttribute("loginBean") Loginbean loginBean) throws SQLException
{

Com obj =new Com();

ResultSet x=obj.store(loginBean.getEma(), loginBean.getWord());
ResultSet y=obj.correct(loginBean.getEma());
 if(x.next())
 {

model.addAttribute("word", loginBean.getWord());
 System.out.println("x="+x);
 
/* model.addAttribute("name", x.getString("vchr_firstname"));
 model.addAttribute("name2", x.getString("vchr_lastname"));
model.addAttribute("img",x.getString("vchr_image"));
*/
//System.out.println( x.getString("vchr_email"));
HttpSession session = request.getSession();
session.setAttribute("userid", x.getInt("pk_int_user_id"));
session.setAttribute("fname", x.getString("vchr_firstname"));
session.setAttribute("lname", x.getString("vchr_lastname"));

return "home";
 
}

else if(y.next())
 {
 /*model.addAttribute("name", y.getString("vchr_firstname"));
 model.addAttribute("name2", y.getString("vchr_lastname"));
model.addAttribute("email",y.getString("vchr_email"));
model.addAttribute("img",y.getString("vchr_image"));*/
HttpSession session = request.getSession();
session.setAttribute("fname", y.getString("vchr_firstname"));
session.setAttribute("lnme", y.getString("vchr_lastname"));
session.setAttribute("email",y.getString("vchr_email"));
session.setAttribute("img",y.getString("image"));
return "passwrong";

 }
 else 
{
model.addAttribute("error", "Invalid Details");

return "emailwrong";
}
}
}

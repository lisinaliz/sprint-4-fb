package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.SQLException;

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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.portlet.ModelAndView;

import com.bean.Userbean;
import com.dbconnection.*;
@Controller
public class HelloController extends Com{
public String saveDirectory="E:/pro/upload";
@RequestMapping(value = "/", method= RequestMethod.GET)
 public String init(Model model) 

{ 
	
return "facebook";
		
}



@RequestMapping(value = "/submit",method = RequestMethod.POST)
public String facebook(@Validated @ModelAttribute("userbean") Userbean userbean ,BindingResult result,ModelMap model,@RequestParam CommonsMultipartFile file,HttpSession session,Model models) throws SQLException 
{
	{   
String fname =userbean.getFname();  System.out.println(fname);


       Com obj =new Com();
       String filename=file.getOriginalFilename();
		System.out.println(saveDirectory+""+filename);
       String dob=userbean.getYear()+"/"+userbean.getMonth()+"/"+userbean.getDay();
       /*if( userbean!= null && userbean.getFname()!=null && userbean.getFname()!=null && userbean.getLname()!=null && userbean.getPhno()!=0 && userbean.getEmail()!=null && userbean.getPword()!=null ) 
       {*/
       boolean y=obj.insert(userbean.getFname(), userbean.getLname(),userbean.getPhno(), userbean.getEmail(), userbean.getPword(),filename,dob,userbean.getGender());
       if(y==false)
    	   
       {
    	   
    		try{
    			byte barr[]=file.getBytes();
    			

                    BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(saveDirectory+"/"+filename));
                    	bout.write(barr);
                    	bout.flush();
                    	bout.close();
    		} catch(Exception e ){System.out.println(e);}
    		
    		model.addAttribute("fname",userbean.getFname());
			model.addAttribute("lname", userbean.getLname());
			model.addAttribute("email", userbean.getEmail());
			model.addAttribute("img",saveDirectory+"/"+filename );
    		return ("home");  
//return new ModelAndView("upload-success","filename",saveDirectory+"/"+filename);
       }
       else
       {
    	   return ("error");
       }

       }
// model.addAttribute("fname", y.getString("first_name"));

       
}

}
       
       
  

       
              
       
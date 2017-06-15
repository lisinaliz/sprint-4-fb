package com.spring;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.FrndBean;
import com.bean.Searchbean;
import com.dbconnection.Com;
import com.dbconnection.db_search;
import com.google.gson.Gson;

@Controller
public class Scontroller extends HttpServlet {

	/*@RequestMapping(value = "/search",method = RequestMethod.POST)
	public String facebook(@Validated @ModelAttribute("searchbean") Searchbean searchbean ) throws SQLException {
	    

	       db_search obj =new db_search();
	       System.out.println("passs="+searchbean.getSearchname());
	      // ResultSet M=obj.search(searchbean.getSearchname());
	       //System.out.println("M="+M);
	       System.out.println(" name:"+searchbean.getSearchname());
	       
	       return "HELLO";
	}
*/
			 
private static final long serialVersionUID = 1L;
@RequestMapping(value="/search" ,method = RequestMethod.GET)
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{  

        response.setContentType("application/json");
        try {
                String term = request.getParameter("searchname");
                System.out.println("Data from ajax call " + term);

                db_search dataDao = new  db_search();
                ArrayList<String> list = dataDao.getFrameWork(term);

                String searchList = new Gson().toJson(list);
                response.getWriter().write(searchList);
                System.out.println(" Search:"+searchList);
               
        } catch (Exception e) {
                System.err.println(e.getMessage());
        }
}
   
        
        @RequestMapping(value="/search_for_frnd" ,method = RequestMethod.GET)
        public String addrqust(){
 return "search_for_frnd";
        	
        }
        @RequestMapping(value="/approve_rqst" ,method = RequestMethod.GET)
        public String cnfmrqust(){
 return "approve_rqst";
        	
        }
        @RequestMapping(value="/search_unfriend" ,method = RequestMethod.GET)
        public String unfrntrqust(){
 return "search_unfriend";
        	
        }
 
        @RequestMapping(value = "/add", method = RequestMethod.GET)
        public String addfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        
         System.out.println("id"+id);
         int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        db_search objsrch = new  db_search();
        objsrch.frient( userid, id, 0, userid);
        return "search_for_frnd";
        }

        @RequestMapping(value = "/confirm", method = RequestMethod.GET)
        public String appfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        
         System.out.println("id"+id);
         int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        db_search objsrch = new  db_search();
        objsrch.confirm( 1, userid, userid,id);
        return "approve_rqst";
        }

        
        @RequestMapping(value = "/delete", method = RequestMethod.GET)
        public String delfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        
         System.out.println("id"+id);
         int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        db_search objsrch = new  db_search();
        objsrch.delete(0,id,id,userid);
        return "approve_rqst";
        }

        
        @RequestMapping(value = "/unfrnd", method = RequestMethod.GET)
        public String unfrind(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        
         System.out.println("id"+id);
         int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        db_search objsrch = new  db_search();
        objsrch.unfrnd(0,id,userid,id);
        return "search_unfriend";
        }
        
        
        
        
		
}	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


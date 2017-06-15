package com.dbconnection;



	import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

	public class Com extends Db_connection {
		String firstName = "";
	    String lastName = "";
	    boolean loggedIn = false;
		public boolean insert(String firstname,String lastname ,String phone, String email, String password,String image,String date,String gender) throws SQLException
		{
			PreparedStatement pt;
			 
				pt = super.conn
				.prepareStatement("insert into user(vchr_firstname, vchr_lastname,int_phone,vchr_email,vchr_pssword,image,DOB,gender)values(?,?,?,?,?,?,?,?)");
				pt.setString(1,firstname);
				pt.setString(2,lastname);
				pt.setString(3,phone);
				pt.setString(4,email);
				pt.setString(5,password);
				pt.setString(6,image);
				pt.setString(7,date);
				pt.setString(8,gender);
				boolean y=pt.execute();

					System.out.println("inserted");
					return y;
			 
		
			
			
			
			}
		public ResultSet  store(String email, String password) throws SQLException
		{
		PreparedStatement pt2;
		pt2=super.conn.
				prepareStatement("select * from user where vchr_email=? and  vchr_pssword=?");
		//prepareStatement("call test1(?,?)");
		pt2.setString(1,email);
		pt2.setString(2,password);
		//pt2.execute();
       
		    ResultSet rs = pt2.executeQuery();
		   System.out.println(pt2);
		    
		         
		          
		          return rs;

		}

		
		public int can( String uname, String pswd)
			{
			PreparedStatement pt1;
			try {
			pt1 = super.conn.
	prepareStatement("select * from user where vchr_email=? and  vchr_pssword=?");
			
			//.prepareStatement(("call test1 (?,?)"));
			pt1.setString(1, uname);
			pt1.setString(2, pswd);
			pt1.execute();
			ResultSet rs = pt1.executeQuery();
			           while(rs.next())
			           {
			        	 String email=rs.getString("vchr_email");
			        	String password=rs.getString("vchr_pssword");
			            System.out.println("Email:"+ email);
			            System.out.println("Password:"+password);	
			                    
			           }
			          
			       

			System.out.println("selected");

			
						
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("not selected");
				}
				return 1;
			    
		}
		
		public static void main(String[] args)
		{
			Com db=new Com();
			System.out.println(db);;
			//db.insert("lisi","t",1234577,"lisina@gmail.com","abc123");
			//db.can("lisinathankayam@gmail.com","Qwerty@123");
		}
		
		
	   
	   
	   
		   

	public ResultSet  correct(String email) throws SQLException
	{
	PreparedStatement pt3;
	pt3=super.conn.
			prepareStatement("select * from user where vchr_email=? ");
	//prepareStatement("call test1(?,?)");
	pt3.setString(1,email);
	
	pt3.execute();
   
	    ResultSet rs1 = pt3.executeQuery();
	   System.out.println(pt3);
	    
	         
	          
	          return rs1;

	}
	
	
	
		   }



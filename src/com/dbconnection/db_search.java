package com.dbconnection;



import java.awt.event.ActionEvent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbconnection.*;

public class db_search extends Db_connection{
/*public ResultSet search(String name) throws SQLException
{
PreparedStatement pt1;
pt1=super.conn.prepareStatement("call search(?)");
pt1.setString(1,name);
pt1.execute();
System.out.println(pt1);
    ResultSet rs1 = pt1.executeQuery();
    while(rs1.next())
    {
   	String name1= rs1.getString("vchr_firstname");
    System.out.println("names:"+ name1);

    }
return rs1;


}

public void searchaction(ActionEvent e)
{
db_search srch=new db_search();

}*/
 
	public ArrayList<String> getFrameWork(String search) {
    ArrayList<String> list = new ArrayList<String>();
    PreparedStatement ps = null;
    String data;
    try {
    ps = conn.prepareStatement("select * from  user where vchr_firstname  LIKE ?");
            ps.setString(1, search + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                    data = rs.getString("vchr_firstname");
                    list.add(data);
            }
    } catch (Exception e) {
            System.out.println(e.getMessage());
    }
    return list;
    
    
    
    
    
    
    
}
	public String frient(int user_id,int user_two ,int status, int action) throws SQLException
	{
		PreparedStatement pt;
		 
			pt = super.conn
			.prepareStatement("insert into relationships(user_one_id,user_two_id,status,action_user_id)values(?,?,?,?)");
			pt.setInt(1,user_id);
			pt.setInt(2,user_two);
			pt.setInt(3,status);
			pt.setInt(4,action);
			
			boolean y=pt.execute();

				System.out.println("inserted");
				 return "success";
	
		
		
		
		}
	
	public String confirm(int status,int action,int user_id,int user_two  ) throws SQLException
	{
		PreparedStatement pt;
		 
			pt = super.conn
			.prepareStatement("update relationships SET status = ?, action_user_id = ?  where user_one_id=? and user_two_id=?");
			pt.setInt(1,status);
			pt.setInt(2,action);
			pt.setInt(3,user_id);
			pt.setInt(4,user_two);
			
			boolean y=pt.execute();

				System.out.println("inserted");
				 return "success";
	
		
		
		
		}
	public String delete(int status,int action,int user_id,int user_two  ) throws SQLException
	{
		PreparedStatement pt;
		 
			pt = super.conn
			.prepareStatement("delete from relationships where  status = ? and action_user_id = ?  and user_one_id=? and user_two_id=?");
			pt.setInt(1,status);
			pt.setInt(2,action);
			pt.setInt(3,user_id);
			pt.setInt(4,user_two);
			System.out.println(pt);
			boolean y=pt.execute();

				System.out.println("deleted");
				 return "success";
	
		
		
		
		}
	
	public String unfrnd(int status,int action,int user_id,int user_two  ) throws SQLException
	{
		PreparedStatement pt;
		 
			pt = super.conn
			.prepareStatement("update relationships SET status = ?, action_user_id = ?  where user_one_id=? and user_two_id=?");
			pt.setInt(1,status);
			pt.setInt(2,action);
			pt.setInt(3,user_id);
			pt.setInt(4,user_two);
			System.out.println(pt);
			boolean y=pt.execute();

				System.out.println("unfriend");
				 return "success";
	
		
		
		
		}
	public static void main(String[] args) 
{
	
	
db_search srch=new db_search();
//srch.search("s");
}



}


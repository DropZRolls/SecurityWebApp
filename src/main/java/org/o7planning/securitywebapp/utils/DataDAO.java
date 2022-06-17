package org.o7planning.securitywebapp.utils;

import java.util.HashMap;
import java.util.Map;


import org.o7planning.securitywebapp.bean.UserAccount;
import org.o7planning.securitywebapp.config.SecurityConfig;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

 
public class DataDAO {

   private static final Map<String, UserAccount> mapUsers = new HashMap<String, UserAccount>();

   static {
      initUsers();
   }

   private static void initUsers() {
	   
	   try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection(
                   "jdbc:mysql://localhost:3306/securitywebapp","root","");
           Statement stmt=con.createStatement();  
           ResultSet rs=stmt.executeQuery("show databases;");
           System.out.println("Connected");  
       		String sql = "SELECT * FROM `securitywebapp`";
       		try {
       			rs = stmt.executeQuery(sql);
       			while (rs.next()) 
       			{
       		      // This user has a role as EMPLOYEE.
       		      UserAccount emp = new UserAccount(rs.getString("Username"), rs.getString("Password"),rs.getString("Genre"), //
       		            SecurityConfig.ROLE_EMPLOYEE);
       		      
       		   mapUsers.put(emp.getUserName(), emp);
 
       			}
       		} 
       		catch (SQLException e) 
       		{
       			e.printStackTrace();
       		}
       }
       catch(Exception e)
       {
           System.out.println(e);
       }

      // This user has 2 roles EMPLOYEE and MANAGER.
      UserAccount mng = new UserAccount("admin", "1234", UserAccount.GENDER_MALE, //
            SecurityConfig.ROLE_EMPLOYEE, SecurityConfig.ROLE_MANAGER);

    
      mapUsers.put(mng.getUserName(), mng);
   }

   // Find a User by userName and password.
   public static UserAccount findUser(String userName, String password) {
      UserAccount u = mapUsers.get(userName);
      if (u != null && u.getPassword().equals(password)) {
         return u;
      }
      return null;
   }
}



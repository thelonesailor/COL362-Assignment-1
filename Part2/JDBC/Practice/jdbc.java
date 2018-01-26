//STEP 1. Import required packages
import java.sql.*;

public class jdbc {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.postgresql.jdbc.Driver";  
   static final String DB_URL = "jdbc:postgresql://";
   static final String server_address="localhost:5432";
   static final String DBname="assignment1";
   static final String USER = "postgres";
   static final String PASS = "bhaibhai";
   static final int count=200;
   

   //  Database credentials
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      // Class.forName(JDBC_DRIVER);

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL+server_address+"/"+DBname,USER,PASS);

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      stmt = conn.createStatement();
      String sql;
      sql = "select * from student;";

      ResultSet rs = stmt.executeQuery(sql);

      //STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
         String id  = rs.getString("student_id");
         String age = rs.getString("name");
         // String first = rs.getString("first");
         // String last = rs.getString("last");

         //Display values
         System.out.print("student_ID: " + id);
         System.out.print("Name: " + age);
         // System.out.print(", First: " + first);
         // System.out.println(", Last: " + last);
      }
      //STEP 6: Clean-up environment
      rs.close();
      stmt.close();
      conn.close();
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }// nothing we can do
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
}//end main
}//end FirstExample
//STEP 1. Import required packages
import java.sql.*;

public class jdbc_populate {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.postgresql.jdbc.Driver";  
   static final String DB_URL = "jdbc:postgresql://";
   static final String server_address="localhost:5432";
   static final String DBname="assignment1";
   static final String USER = "postgres";
   static final String PASS = "bhaibhai";
   static final int insert_queries_count=200;   

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
      System.out.println("Connected to database: "+DBname);

      //STEP 4: Execute a query
      String sql1,sql2,sql3;
      sql1 = "insert into course(course_id,name) values";
      sql2 = "insert into student(student_id,name) values";
      sql3 = "insert into registers(student_id,course_id) values";

      String course[]=new String[insert_queries_count+1];
      String student[]=new String[insert_queries_count+1];
      String registers[]=new String[insert_queries_count+1];

      // System.out.println("Creating statement...");
      for(int i=1;i<=insert_queries_count;i++)
         course[i]=sql1+"(\'"+Integer.toString(i)+"\',\' \');";
      for(int i=1;i<=insert_queries_count;i++)
         student[i]=sql2+"(\'"+Integer.toString(i)+"\',\' \');";
      for(int i=1;i<=insert_queries_count;i++)
         registers[i]=sql3+"(\'"+Integer.toString(i)+"\',\'"+Integer.toString(i)+"\');";

      stmt = conn.createStatement();
    
      for(int i=1;i<=insert_queries_count;i++)
        stmt.executeUpdate(course[i]);

      for(int i=1;i<=insert_queries_count;i++)
         stmt.executeUpdate(student[i]);
    
      for(int i=1;i<=insert_queries_count;i++)
         stmt.executeUpdate(registers[i]);      

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
   System.out.println("Insertion Finished");
}//end main
}//end FirstExample
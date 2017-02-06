<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#A3F0EB">
<h1>
<center>Hello 
<% 

 Class.forName("com.mysql.jdbc.Driver"); 
              //  String envVar = System.getenv("MYSQL_URL");
               
            //  Connection c =DriverManager.getConnection(envVar);  
          
 // String HOST = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
 // String PORT = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
 // String USERNAME = System.getenv("OPENSHIFT_MYSQL_DB_USERNAME");
 // String PASSWORD = System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
 // String DB_NAME = System.getenv("OPENSHIFT_MYSQL_DB_NAME");
            
             // String url = "jdbc:mysql://" + HOST + ":" + PORT +
                    "/" + DB_NAME;
            //  Connection con = DriverManager.getConnection(url, USERNAME, PASSWORD);     
            String url="jdbc:mysql://172.30.54.105:3306/sampledb" ;
             Connection c =DriverManager.getConnection(url,"admin","root");
            
              String r1=request.getParameter("n1");
              PreparedStatement pstmt=con.prepareStatement("insert into  attend values(?)");
              pstmt.setString(1,r1);
              pstmt.executeUpdate();
out.print(r1);
%></center>
</h1>
</body>
</html>

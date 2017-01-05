<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#A3F0EB">

<% 
                Connection c=null;
                PreparedStatement pstmt;
                ResultSet rs;
                String url="jdbc:mysql://172.30.40.75:3306/sampledb" ;
                Class.forName("com.mysql.jdbc.Driver");
                c =DriverManager.getConnection(url,"sonal","sonal");
          
              String r1=request.getParameter("n1");
              pstmt=c.prepareStatement("insert into  attend values(?)");
              pstmt.setString(1,r1);
              pstmt.executeUpdate();
              out.print(r1);

              %>
</body>
</html>

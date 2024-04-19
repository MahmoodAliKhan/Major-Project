
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    String uemail = request.getParameter("email");
    String password = request.getParameter("password");
     String email = request.getParameter("email");
    try{
       
    Connection co = null;
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from user where email= '"+uemail+"' and pass='"+password+"'");
    
    if(rs.next())
    {
         
         session.setAttribute("email",uemail);
         session.setAttribute("email",email);
         

    response.sendRedirect("uhome.jsp?m1=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("user.jsp?m2=Login_Faild");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in userl ogact"+e.getMessage());
    }
%>

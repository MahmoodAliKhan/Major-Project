
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    try{
       
    Connection co = null;
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from dataprovider where email= '"+email+"' and pass='"+password+"'");
    
    if(rs.next())
    {
        // String email = rs.getString("email");
         session.setAttribute("email",email);

    response.sendRedirect("ohome.jsp?m1=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("owner.jsp?m2=Login_Faild");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in userl ogact"+e.getMessage());
    }
%>

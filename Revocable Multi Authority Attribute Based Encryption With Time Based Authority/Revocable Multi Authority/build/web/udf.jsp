<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<%
            if (request.getParameter("download") != null) {%>
        <script>alert('Vefication Failed   Key not Matched');</script>
        <%}
            if (request.getParameter("download1") != null) {%>
        <script>alert('Vefication Failed   Key not Matched');</script> 
        
         <%}
            if (request.getParameter("download2") != null) {%>
        <script>alert('Download Failed ');</script> 
         <%}
            if (request.getParameter("download3") != null) {%>
        <script>alert('Download Failed ');</script> 
        <%}
        %>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Encryption Scheme</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Encryption Scheme
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/Encryption Scheme-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1><a href="index.html">Revocable Multi-Authority</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
         <li><a class="nav-link scrollto" href="uhome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="ucf.jsp">Cloud Files</a></li>
           <li><a class="nav-link scrollto active" href="udf.jsp">Download Files</a></li>
          <li><a class="nav-link scrollto " href="index.html">Logout</a></li>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <%
      String email=session.getAttribute("email").toString();
       
       try{ 
	
        Connection co = databasecon.getconnection();
        PreparedStatement pst=co.prepareStatement("select * from request where umail='"+email+"'and status='Policy Vefied' ");
        ResultSet rs=pst.executeQuery();
       
       
      %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
     <center><br>
                           
                                <h6 style="color:white"> File Download</h6><br>
                                
<table class="table table-striped" style="width:80%;margin-bottom: 60%">
  <thead>
    <tr>
       <th><font color="red"> File Name</th>
     <th><font color="red"> Owner</th>
     <th><font color="red"> Policy</th>
      <th><font color="red"> Time</th>
      <th><font color="red"> Experience</th>
      <th><font color="red"> Branch</th>
       <th><font color="red"> Time</th>
     <th><font color="red"> View</th>
    </tr>
  </thead>
   <%
        while(rs.next()){
        %>
  <tbody>
    <tr>
    <td><%=rs.getString(1)%></td>
               
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(5)%></td>
                  <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(11)%></td>
        
                <td> <a href="udf1.jsp?filename=<%=rs.getString("filename")%>&data=<%=rs.getString("data").replaceAll("\\+", "%2B")%>&owner=<%=rs.getString("owner")%>&policy=<%=rs.getString("policy")%>&time=<%=rs.getString("time")%>&exp=<%=rs.getString("exp")%>&branch=<%=rs.getString("branch")%>"><font style="color: green; font-size: 16px">View</a></font> </td>
               
             
         
      </tr>
  </tbody>
   <%
        }
        %>
</table>
      <% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>                         
           
                              
                            </center>
    </div>
  </section><!-- End Hero -->

  <main id="main">

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
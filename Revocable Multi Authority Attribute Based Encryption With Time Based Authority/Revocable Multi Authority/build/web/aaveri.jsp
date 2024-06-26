<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Key Verification Success & Key Sent to Data Consumer Mail');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Key Verification Failed ');</script> 
          <%}
            if (request.getParameter("policy") != null) {%>
        <script>alert('vefication failed   policy not matched');</script> 
         <%}
            if (request.getParameter("policy1") != null) {%>
        <script>alert('vefication failed');</script>
        <%}
            if (request.getParameter("policy2") != null) {%>
        <script>alert('vefication failed ');</script>
        <%}
            if (request.getParameter("dmsg") != null) {%>
        <script>alert('vefication failed attributes not matched');</script>
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
         <li><a class="nav-link scrollto" href="aahome.jsp">Home</a></li>     
          <li><a class="nav-link scrollto" href="aviewowners.jsp">View Owners</a></li>
          <li><a class="nav-link scrollto " href="aviewusers.jsp">View Users</a></li>                        
          <li><a class="nav-link scrollto active" href="aaveri.jsp">Attribute Verify</a></li>
          <li><a class="nav-link scrollto" href="arc.jsp">Revocation</a></li>
          <li><a class="nav-link scrollto " href="index.html">Logout</a></li>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <%
     //  String email=session.getAttribute("email").toString();
       
       try{ 
	
        Connection co = databasecon.getconnection();
        PreparedStatement pst=co.prepareStatement("select * from request where status='no' and policy = 'scientist' or policy = 'cardiologist'  ");
        ResultSet rs=pst.executeQuery();
       
       
      %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
     <center><br>
                           
                                <h6 style="color:white">Policy Verification</h6><br>
                                
<table class="table table-striped" style="width:80%;margin-bottom: 60%">
  <thead>
    <tr>
     <td>File Name</td>
        <td>Owner</td>
       <td>Policy</td>
       <td>Time</td>
       <td>Experience</td>
       <td>Branch</td>
       <td>Data Consumer</td>
        <td>Time</td>
       <td>Status</td>
       <td>View</td>
    </tr>
  </thead>
   <%
        while(rs.next()){
        %>
  <tbody>
    <tr>
      <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td> 
                <td><%=rs.getString(7)%></td> 
                   <td><%=rs.getString(8)%></td> 
                    <td><%=rs.getString(11)%></td> 
                <td><%=rs.getString(9)%></td> 
             
               <td><a href="keyverify1.jsp?filename=<%=rs.getString("filename")%>&owner=<%=rs.getString("owner")%>&umail=<%=rs.getString("umail")%>&t1=<%=rs.getString("t1")%>">Verify Policy</a> </td>
   
             
         
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
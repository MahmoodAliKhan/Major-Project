<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
     <%
            if (request.getParameter("upload") != null) {%>
        <script>alert('File Successfully uploaded');</script>
        <%}
            if (request.getParameter("upload1") != null) {%>
        <script>alert('File Upload Failed ');</script> 
         <%}
            if (request.getParameter("upload2") != null) {%>
        <script>alert('File Already Uploaded Failed ');</script> 
        
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
          <li><a class="nav-link scrollto " href="ohome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="upload.jsp">Upload</a></li>
          <li><a class="nav-link scrollto active" href="vf.jsp">View Files</a></li>
          <li><a class="nav-link scrollto " href="index.html">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
    <%@page import="attributebased.Dbconnection"%>
  </header><!-- End Header -->
<%

                           // String[] filedetails = request.getQueryString().split(",");
                            String filename =request.getParameter("filename");
                            String owner =request.getParameter("owner");
                            String privatekey = null;
                            InputStream is = null;

                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from encryptkey where filename='" +filename+ "' and owner='" +owner+ "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                privatekey = rt.getString("privatekey");
                               
                                is = (InputStream) rt.getAsciiStream("data");
                              
                            } else {
                                out.println("error while retreiving data");
                            }
                            BufferedReader br = new BufferedReader(new InputStreamReader(is));
                            String temp = null;
                            StringBuffer sb = new StringBuffer();
                            while ((temp = br.readLine()) != null) {
                                sb.append(temp + "\n");
                            }
                            
                        %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
     <center>
         <br>       
         
         <h4>View Encryption Key </h4>
   
<form name="f2" action="encrypt1" method="post" enctype="multipart/form-data" style="margin-right:  50px">
<b><font color='black'>File Name</b><input class="textbox" type="text" value="<%=filename%>"  name="filename" style="margin-left: 58px;width: 250px" /><br /><br />
  <b>Owner</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 250px" /><br /><br />
<b>Private Key</b><input class="textbox" type="text" value="<%=privatekey%>" readonly="" name="privatekey" style="margin-left: 58px;width: 250px" /><br /><br />
<b>File Content  </b><input  name="data" value="<%=sb.toString()%>" readonly="" style="margin-left: 58px;width: 250px"></textarea><br /><br />

 <b>Policy</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select  name="policy"  required="required"style="margin-left: 58px;width: 250px">
                <option value="na" selected="" style="color:darkblue">Choose Policy</option>
                <option value="scientist" style="color:darkblue">Scientist</option>
                <option value="cardiologist"style="color:darkblue">Cardiologist</option>
                 <option value="lifeinstitute"style="color:darkblue">Life Institute</option>
                 <option value="generalhospital"style="color:darkblue">General Hospital</option>
     </select><br><br>

      <b>Date</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="date" name="time" style="margin-left: 58px;width: 250px" /><br /><br />
    <b>Experience</b><input class="textbox" type="text"  name="exp" style="margin-left: 58px;width: 250px" /><br /><br />


       <b>Branch</b>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select  name="branch"  required="required" style="margin-left: 58px;width: 250px"><br>
                <option value="na" selected="" style="color:darkblue">Choose Branch</option>
                <option value="hyderabad" style="color:darkblue">Hyderabad</option>
                <option value="pune"style="color:darkblue">Pune</option>
                 <option value="delhi"style="color:darkblue">Delhi</option>
                </select>
    <br><br>
          <b>Time</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="textbox" type="time" name="t1" style="margin-left: 58px;width: 250px" /><br /><br /><br><br>
    <input type="submit" value="submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
</form>           
           
                              
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
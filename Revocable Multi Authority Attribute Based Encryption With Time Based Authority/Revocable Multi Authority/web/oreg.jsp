<!DOCTYPE html>
<html lang="en">

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
         <li><a class="nav-link scrollto" href="index.html">Home</a></li>
          <li><a class="nav-link scrollto active" href="owner.jsp">Owner</a></li>
          <li><a class="nav-link scrollto" href="cloud.jsp">Cloud</a></li>
          <li><a class="nav-link scrollto " href="user.jsp">User</a></li>
             <li><a class="nav-link scrollto " href="aa.jsp">Authority1</a></li>
                 <li><a class="nav-link scrollto " href="aa2.jsp">Authority2</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
     
         <center>
                                <h6 style="color:white">Owner Register</h6>
                                
                               <form name="form1"   action="oregact.jsp" method="get">

            <center>   <table align="center">

                <center>   

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Data Consumer Name:</font></strong></td>
                        <td><input type="text" class="uname" name="name" placeholder= UserName required style="height:30px; width:200px" />&nbsp;<span class="status"></span></td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td><strong><font size="3" color="black">Password: </font></strong></td>
                        <td> <input type="password" name="pass" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td>
                    </td>
                </tr>

  <tr>
                    <td>
                        <td><strong><font size="3" color="black">Email: </font></strong></td> 
                        <td><input type="email" name="email" id="email1" placeholder= Email required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>
                
               

                <tr>
                    <td>
                        <td><strong><font size="3" color="black">DOB: </font></strong></td>
                        <td><input type="date" name="dob" id="dob1" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

               
 <tr>
                    <td>
                        <td><strong><font size="3" color="black">Gender: </font></strong></td> 
                        <td><select id="kk" name="gen" required style="height:34px; width:150px">
                               <option value="na" selected="" >Gender:</option>
                                <option value="male" >Male</option>
                                        <option value="female">Female</option>
                                           </select></td>
                    </td>
                </tr>
                    
                    <tr>
                    <td>
                        <td><strong><font size="3" color="black">Location: </font></strong></td> 
                        <td><select id="kk" name="location" required style="height:34px; width:150px">
                                  <option value="na" selected="" >Location:</option>
                                  <option value="hyderabad" >Hyderabad</option>
                                  <option value="pune">Pune</option>
                                   <option value="delhi">Delhi</option>  </select></td>
                    </td>
                </tr>
                    
                    
              <tr>
                    <td>
                        <td><strong><font size="3" color="black">Contact: </font></strong></td> 
                        <td><select id="kk" required style="height:34px; width:50px">
                                <option value="+91">+91</option>

                                <input type="text" name="contactno" id="contactno1" placeholder= MobileNo. required style="height:30px; width:200px"></input>
                            </select></td>
                    </td>
                </tr>

 
      <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td>
                        <td><input type="submit" value="Register" style="height:50px; width:55px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                            <input type="reset" value="Reset" style="height:50px; width:50px" /></td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                       
                    </td>
                </tr>





            </table>
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
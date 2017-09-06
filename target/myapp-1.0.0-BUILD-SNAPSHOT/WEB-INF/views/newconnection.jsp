<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<head> 
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <jsp:include page="components/css.jsp"></jsp:include>      
</head> 
<body> 
    <!-- Navigation -->
       <jsp:include page="components/footerpagenav.jsp"></jsp:include>   
    
    <!-- Main container -->
    <div class="container-fluid nopadding"> 
        <!-- Never stop -->
         <section class="col-md-12 col-lg-12 nopadding" id="home"> 
            <div class="row flex-row" >
                <div class="col-md-12 valign ">
                    <div>
                        <h1 style="text-align:center;">New Connection</h1> 
                    </div>
                </div>
                <div class="col-md-3 "></div>
                <div class="col-md-6  " style="text-align:left;">
                    <input type="text" id="Name" name="name" placeholder="Name">
                </div>
                <div class="col-md-3 "></div>
                <div class="col-md-3 "></div>
                <div class="col-md-6  " style="text-align:left;">
                    <input type="text" id="Email" name="Email" placeholder="Email">
                </div>
                <div class="col-md-3 "></div>
                <div class="col-md-3 "></div>
                <div class="col-md-6  " style="text-align:left;">
                    <input type="text" id="phone" name="Phone" placeholder="Mobile">
                </div>
                <div class="col-md-3 "></div>
                <div class="col-md-3 "></div>
                <div class="col-md-6  " style="text-align:left;">
                    <input type="text" id="pincode" name="city" placeholder="City">
                </div>
                <div class="col-md-3 "></div>
                <div class="col-md-3 "></div>
                <div class="col-md-6  " style="text-align:left;">
                    <input type="text" id="pincode" name="pincode" placeholder="Pincode">
                </div>
                <div class="col-md-12  "></div>
                <div class="col-md-5  "></div>
                <div class="col-md-2 buttonright" align="right">
                    <button type="button" class="btn btn-danger btn-xl buttonv">SEND NOW</button>
                </div>

        </section>
        <div class="row row-white" style="padding-bottom:30px;"> </div>
    </div>  
    <!-- Main container end -->
    
    <!-- Footer -->
    <jsp:include page="components/footer.jsp"></jsp:include>
    
    <script src="js/jquery.min.js"></script>     
    <script src="js/bootstrap.min.js"></script>     
    <script src="js/jquery.singlePageNav.min.js"></script>     
    <script src="js/simple-slider.js"></script>
    <script src="js/nav.js"></script>     
    
</body>
</html>
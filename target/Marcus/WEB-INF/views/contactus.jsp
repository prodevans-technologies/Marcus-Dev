<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html> 
<head> 
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <jsp:include page="components/css.jsp"></jsp:include>      
</head> 
<body> 
<!-- Navigation -->
       <jsp:include page="components/footerpagenav.jsp"></jsp:include>   
    
     <!-- Main container -->

    <div id="v" class="container-fluid nopadding"> 

        <!-- We are One8 -->

        <section class="col-md-12 col-lg-12 nopadding" id="home"> 
            <div class="row flex-row" style="background-image: url(images/faq1.png);" >

                <div class="col-md-12 faqheader faaqheaderpadding ">
                    <h1 class="h1-font"> Contact</h1>
                </div>

            </div>             
        </section>


        <!-- Address  -->
        <section class="col-md-12 col-lg-12 nopadding"> 
            <div class="row flex-row" style="background-color:#ffffff; ">
                <div class="col-md-1  "></div>
                <div class="col-md-4  ">
                    <div>
                        <h1 style="padding-left: 20px; padding-bottom: -5px; text-align:left;">Address</h1> 
                        <p style="padding-left: 20px; text-align:left; padding-bottom: -5px;">
                            Novel Tech Park, 3rd Floor, No. 46/4 Garvebhavi Palya Hongasandra, Hosur Road, Bengaluru, Karnataka 560068
                        </p>
                        <h1 style="padding-left: 20px; text-align:left; padding-bottom: -5px;">Contact</h1> 
                        <p style="padding-left: 20px; text-align:left; padding-bottom: -5px;">
                            +91 - 9019 602 602
                        </p>
                        <h1 style="padding-left: 20px; text-align:left; padding-bottom: -5px;">Mail</h1> 
                        <p style="padding-left: 20px; text-align:left; padding-bottom: -5px;">
                            info@oneeight.co.in
                        </p>
                    </div>
                </div>
                <div class="col-md-5 " style="padding: 20px; text-align:left;" >
                    <div id="map"></div> 
                </div>
            </div>
        </section>
        <div class="row row-white" style="padding-bottom:30px;"> </div>
        <section class="col-md-12 col-lg-12 nopadding"> 
        <form:form class="row" action="contactusRequestPage" method="post" name="contact" modelAttribute="contactusDetails">
            <div class="row flex-row" style="background-color:#ffffff; ">

                <div class="col-md-1  "></div>
                <div class="col-md-5  " style="text-align:left;">
                    <form:input type="text" required="required" path="name" id="Name" name="name" placeholder="Name" />
                </div>
                <div class="col-md-5  " style="text-align:left;">
                    <form:input type="email" required="required" path="email_id" id="email_id" name="email_id" placeholder="Email" />
                </div>
                <div class="col-md-1  "></div>
                <div class="col-md-1  "></div>
                <div class="col-md-10  " style="text-align:left;">
                    <form:input type="text" required="required" path="subject" id="subject" name="subject" placeholder="Subject"/>
                </div>
            </div>  
            <div class="col-md-12 "></div>
            <div class="row row-white" style="padding-bottom:30px;"> </div>
            <div class="col-md-1  "></div>
            <div class="col-md-10  " style="text-align:left; ">
               <form:textarea path="message" required="required" rows="4" name="message" placeholder="Message"></form:textarea>
            </div>
            <div class="col-md-2  "></div>
            <div class="col-md-9 buttonright" align="right">
                <button type="submit" class="btn btn-danger btn-xl buttonv">SEND NOW</button>
            </div>
            
            <div class="row row-white" style="padding-bottom:30px;"> </div>
            </form:form>
        </section>
       <div id="container-floating">
            <div id="floating-button" data-toggle="tooltip">
                <p class="plus valign" style="padding-top: 8px;" >
                    <img src="images/wifi.png" height="18" width="18" />
                    <br>
                   <a class="external fv" href="${pageContext.request.contextPath }/newconnection">
                        New
                        Connection
                    </a>
                </p>
            </div>
        </div>
    </div>  <!-- Main container end -->   
    
    <!-- Footer -->
    <jsp:include page="components/footer.jsp"></jsp:include>
    
    <script src="js/jquery.min.js"></script>     
    <script src="js/bootstrap.min.js"></script>     
    <script src="js/jquery.singlePageNav.min.js"></script>     
    <script src="js/simple-slider.js"></script>
    <script src="js/nav.js"></script>     
    
</body>
</html>
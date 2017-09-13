<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <!-- faq -->
                <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                    <div class="row flex-row" style="background-image: url(images/faq1.png);" >
                        <div class="col-md-12 faqheader faaqheaderpadding ">
                            <h1 class="h1-font"> FAQs</h1>
                        </div>
                    </div>             
                </section>
                <!-- Presenting the network that never stops -->
                <section class="col-md-12 col-lg-12" id="faq"> 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <h1 class="h1-font"> General</h1>

                                <p class="faqp" >What is FTTH?</p>
                                <p class="faqp1"> FTTH stands for Fiber-to-the-Home. This means a fiber optic line is hooked directly to your home or business. Fiber optic line uses a thin strand of glass to transmit beams of light that carry an amazing amount of data. This delivers high-speed Internet services.</p>

                                <p class="faqp" >What is FUP</p>
                                <p class="faqp1">Fair Usage Policy (also known as Fair Access Policy or  Band width  Cap) is implemented by Internet Service Providers (ISPs) where once you reach data transfer limit as per the plan opted,speed reduces to as stated in your plan and is reset as per plan at the start of your next monthly billing cycle.</p>

                                <p class="faqp" >What is One8 Cube?</p>
                                <p class="faqp1">Lorem ipsum dolor sit amet, tellus ut nibh odio lacinia, purus nam faucibus maecenas mauris quam ultricies, vel magna maecenas. Tempor nunc velit suspe ndisse in in, mauris amet, nullam condimentum arcu vehicula,curab itur sed risus ipsum. lnventore nullam sed non, dui ut tristique molestie. Rutrum velit magna integer id, in erat nulla justo at, ultr icies pellentesque vel duis in,enim porttitor phasellus aliquam, rutrum ac eu sed pellentesque.</p>

                                <p class="faqp" >How many devices can I use on One8 Cube?</p>
                                <p class="faqp1">Erat semper elementum eras vestibulum ipsum luctus, velvitae mauris per ipsum lea quam, suspendisse vehicula, mauris eu quae ut nu llam quam,eget massa ultricies dignissim. Quis diam,tellus vitae dictumst sed ipsum, nam tincidunt. Semper pharetra venenatis fermentum urna vitae volutpat.</p>

                                <p class="faqh" >New connection</p>
                                <p class="faqp">What is the cost of a new connection?</p>
                                <p class="faqp1">Erat semper elementum eras vestibulum ipsum luctus, velvitae mauris per ipsum lea quam, sretra venenatis fermentum urna vitae volutpat</p>          
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </section>
                <div class="row row-white" style="padding-bottom:3%;"> </div>
                 <jsp:include page="components/float.jsp"></jsp:include>
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
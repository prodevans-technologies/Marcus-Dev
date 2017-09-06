<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html> 
    <head> 
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="../components/css.jsp"></jsp:include>      
        </head> 
        
        <body> 
            <!-- Navigation -->
        <jsp:include page="../components/footerpagenav.jsp"></jsp:include>   

            <!-- Main container -->
            <div class="container-fluid nopadding"> 
            <!-- faq -->
                <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                    <div class="row flex-row valign" style="background-image: url(images/faq1.png);" >
                        <div class="col-md-12 faqheader faaqheaderpadding ">
                            <h1 class="h1-font"> Pay bill</h1>
                        </div>
                    </div>             
                </section>
                <!-- Never stop -->
                <section class="col-md-12 col-lg-12 nopadding"> 
                <form:form role="form" action="payBillRequest" method="post" modelAttribute="payBillDetails" >
                    <div class="col-md-12">
                        <div class="col-md-3"></div>
                        <div class="col-md-6" style="text-align:left;">
                            <form:input path="account_id" type="text" id="account_id" placeholder="One8 ID " required="required"/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-3"></div>
                        <div class="col-md-6" style="text-align:left;">
                            <form:input path="email_id" type="text" id="email_id" placeholder="Email ID " required="required"/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-3"></div>
                        <div class="col-md-6" style="text-align:left;">
                            <form:input path="amount" type="text" id="amount" placeholder="Amount"  required="required"/>
                        </div>
                    </div>
                    <div class="col-md-12"></div>
                    <div class="col-md-5"></div>
                    <div class="col-md-2 buttonright" align="right">
                        <button type="submit" class="btn btn-danger btn-xl buttonv">PAY BILL</button>
                    </div>

                </form:form>

            </section>
            <div class="row row-white" style="padding-bottom:15px;"> </div>
        </div>
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

        <!-- Main container end -->

        <!-- Footer -->
        <jsp:include page="../components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     

    </body>
</html>
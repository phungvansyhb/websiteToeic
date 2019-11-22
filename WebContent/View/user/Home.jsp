<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
 <!-- Bootstrap -->
    <link href="Template/FrontEnd/css/bootstrap.css" rel="stylesheet">
    <link href="Template/FrontEnd/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Template/FrontEnd/css/style.css" rel="stylesheet">   
 <!--Font-->
    <link href="Template/FrontEnd/font/font.css" rel='stylesheet' type='text/css'>    
  <!-- SCRIPT -->  
  	
     <script src="Template/FrontEnd/js/jquery.js"></script>
    <script src="Template/FrontEnd/js/bootstrap.min.js"></script>
      
</head>
<body>
	<!--HEADER ROW-->
  		<%@include file="dashboard/Header.jsp"%>
  	<!-- /HEADER ROW -->
  	
  <div class="container-fluid">

  <!--Carousel-->
  <div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">

      <div class="active item">
        <div class="container">
          <div class="row">         
              <div class="span6">
                <div class="carousel-caption">
                      <h1>Hãy tham gia với chúng tôi</h1>
                      <p class="lead">tâm huyết , chuyên nghiệp , hiệu quả cao</p>
                      <a class="btn btn-large btn-primary" href="loginController">Tham gia ngay</a>
                </div>
              </div>
                <div class="span6"><p style="margin-top:80px"> <img src="Template/FrontEnd/img/slide/banner.jpg" style="width: 500px;height: 350px"></p></div>
          </div>
        </div>   
      </div>
      
<c:forEach items="${list}" var="banner">
      <div class="item">     
        <div class="container">
          <div class="row">         
              <div class="span6">
                <div class="carousel-caption">
                	
                		<h1>${banner.getBannerName() }</h1>
                		<p class="lead"> ${banner.getBannerContent() }</p>
                		<a class="btn btn-large btn-primary" href="loginController">Tham gia ngay</a>
                	              
                </div>
              </div>
               <div class="span6"> <img src="Template/FrontEnd/img/slide/${banner.getBannerImage()}" style="width: 500px; height: 350px"></div>
         </div>
        </div>
      </div>
 </c:forEach>   
 
    </div>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>
    <!-- /Carousel -->
<!-- Feature -->
  <div class="row feature-box">
      <div class="span12 cnt-title">
       <h1>At vero eos et accusamus et iusto odio dignissimos</h1> 
        <span>Contrary to popular belief, Lorem Ipsum is not simply random text.</span>        
      </div>

      <div class="span4">
        <img src="Template/FrontEnd/img/icon3.png">
        <h2>Feature A</h2>
        <p>
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        </p>

        <a href="#">Read More &rarr;</a>

      </div>

      <div class="span4">
        <img src="Template/FrontEnd/img/icon2.png">
        <h2>Feature B</h2>
        <p>
            Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
            aliqua. 
        </p>   
          <a href="#">Read More &rarr;</a>    
      </div>

      <div class="span4">
        <img src="Template/FrontEnd/img/icon1.png">
        <h2>Feature C</h2>
        <p>
            Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
        </p>
          <a href="#">Read More &rarr;</a>
      </div>
  </div>
<!-- /.Feature -->
  <div class="hr-divider"></div>
<!-- Row View -->
    <div class="row">
        <div class="span6"><img src="Template/FrontEnd/img/responsive.png"></div>

        <div class="span6">
          <img class="hidden-phone" src="Template/FrontEnd/img/icon4.png" alt="">
          <h1>Fully Responsive</h1>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
             <a href="#">Read More &rarr;</a>
        </div>
    </div>

    
</div>

<!-- /.Row View -->

	<!--Footer-->
		<%@include file="dashboard/Footer.jsp"%>
	<!--/.Footer-->
</body>
</html>
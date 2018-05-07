<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rama Pipe</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
<%@ include file="/WEB-INF/jsp/style.jsp"%>
<%@ include file="/WEB-INF/jsp/script.jsp"%>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<!-- Banner Start Here -->
	<div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li class="item1 active"></li>
      <li class="item2"></li>
      <li class="item3"></li>
      <li class="item4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="images/banner1.jpg" alt="Banner1" width="50px" height="50px">
        <div class="carousel-caption">
          <h3>Banner 1</h3>
          <p>Description of banner 1</p>
        </div>
      </div>

      <div class="item">
        <img src="images/banner2.jpg" alt="Banner2" width="50px" height="50px">
        <div class="carousel-caption">
          <h3>Banner 2</h3>
          <p>Description of banner 2</p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/banner3.jpg" alt="Banner3" width="50px" height="50px">
        <div class="carousel-caption">
          <h3>Banner 3</h3>
          <p>Description of banner 3</p>
        </div>
      </div>

      <div class="item">
        <img src="images/banner4.jpg" alt="Banner4" width="50px" height="50px">
        <div class="carousel-caption">
          <h3>Banner 4</h3>
          <p>Description of banner 4</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
	<div class="container contentBottom">
		<aside class="col-xs-12 col-md-8 welcomeTxt">
		<h3 class="col-title">Welcome To Rama Pipe</h3>
		<span class="liner"></span>
		<p>
			RAMA PIPE was established in 1998 by Mr. S.D.BANSAL,with a vision to
			grow an organised industrial set for manufacturing various types of
			Hoses and Pipes. In the last few years our company has shown
			remarkable performance in manufacturing Industrial hoses as stated in
			our <a href="product">product</a> portfolio. A desire to develop
			useful hoses with factual and experience based Research and
			Development had made us a dynamic entity in the Polymer Hose
			Industry.</p><p> 
			We have multiple Extruding Lines installed with capacity to
			lakhs of meters of Hoses of varying sizes from 1mm to 38mm sizes. We
			have a well organized setup with latest machinery and control
			instrumentation.
		</p>
		</aside>
		<!-- Welcome Box Text End -->
	</div>
	<!-- Content Bottom Box End Here -->
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
	<script>
$(document).ready(function(){
	$("ul.topnav li:nth-child(1)").addClass("active");
});
</script>
<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel({interval: 2000, pause: "hover"});
    
    // Enable Carousel Indicators
    $(".item1").click(function(){
        $("#myCarousel").carousel(0);
    });
    $(".item2").click(function(){
        $("#myCarousel").carousel(1);
    });
    $(".item3").click(function(){
        $("#myCarousel").carousel(2);
    });
    $(".item4").click(function(){
        $("#myCarousel").carousel(3);
    });
    
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });
});
</script>
</body>
</html>

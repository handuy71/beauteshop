<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link href="Frontend/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link
	href='//fonts.googleapis.com/css?family=Londrina+Solid|Coda+Caption:800|Open+Sans'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="Frontend/css/responsiveslides.css">
<script src="Frontend/js/jquery.min.js"></script>
<script src="Frontend/js/responsiveslides.min.js"></script>
<script src="js/client/accounting.js"></script>
<!-- FONT AWESOME -->
<link rel="stylesheet" href="Frontend/css/font-awesome.min.css">
<link rel="stylesheet" href="Frontend/css/eleganticon.css">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="Frontend/rs-plugin/css/style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="Frontend/rs-plugin/css/navstylechange.css" media="screen" />
<link rel="stylesheet" type="text/css" href="Frontend/rs-plugin/css/settings.css" media="screen" />
<!-- MAGNIFIC POPUP -->
<link rel="stylesheet" href="Frontend/css/magnific-popup.css">
<!-- OWL CAROUSEL -->
<link rel="stylesheet" href="Frontend/css/owl.carousel.css">    
<!-- STYLESHEET -->
<link rel="stylesheet" href="Frontend/css/style.css">
<!-- GOOGLE FONTS -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,500,600,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway:600,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Cookie:400' rel='stylesheet' type='text/css'>

<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script>
		    // You can also use "$(window).load(function() {"
			    $(function () {

			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		   
		  </script>

</head>
<body>


	<div class="header">
		<!--Header-Top-->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="left"><span class="glyphicon glyphicon-earphone" ></span> Liên hệ 19001009 </div>
						<!--/.left-->
					</div>
					<!--/.col-md-6-->
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="right">
						<ul>
								<c:if test="${pageContext.request.userPrincipal.name != null}">

				<ul>					
					<!-- 	<li><a href="<%=request.getContextPath()%>/checkout"">Thanh toán</a></li> -->
					<li><a href="<%=request.getContextPath()%>/account"> Chào ${loggedInUser.hoTen}</a></li>
					<li><a href="<%=request.getContextPath()%>/cart"> <span>Giỏ hàng</span></a><span
						class="glyphicon glyphicon-shopping-cart"></span></li>

					<li><a href="<%=request.getContextPath()%>/logout"> Đăng
							xuất</a></li>
				</ul>
			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<ul>
					<li><a href="<%=request.getContextPath()%>/register">Đăng
							kí</a></li>
					<li><a href="<%=request.getContextPath()%>/login">Đăng
							nhập</a></li>
					<li><a href="<%=request.getContextPath()%>/cart"> <span>Giỏ hàng</span></a><span
						class="glyphicon glyphicon-shopping-cart"></span></li>
				</ul>
			</c:if>
							</ul>
						</div>
						<!--/.right-->
					</div>
					<!--/.col-md-6-->
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
		</div>
		<!--/.header-top-->
		<!--Header-Middle-->
		<div class="header-middle">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8 col-xs-12 site-logo">
						<div class="logo">
							<a href="<%=request.getContextPath()%>/"><img src="Frontend/img/Logo.png" alt="logo" />
							</a>
						</div>
						<div class="cart-text"> <img src="Frontend/img/cart-2.png" alt="cart-2"> Hỗ trợ ship COD toàn quốc </div>                        
					</div>
					<!--/.site-logo-->
					<div class="col-md-4 col-sm-4 col-xs-12 header-search">
						<div class="search-bar">
							<form action="/beauteshop/search">
								<input type="text" name="name">
								<input type="submit" value="Search" />
							</form>
						</div>
						<div class="clear"></div>
						<!--/.search-->
					</div>
					<!--/.header-search-->
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
		</div>
		<!--/.header-middle-->
		<!--Navbar-->
		<div class="navbar beaute-nav navbar-expand-lg">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">                      
						<li><a href="<%=request.getContextPath()%>/">Home</a></li>
						<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Danh mục</a>
							<ul class="dropdown-menu" id="danhmuc2">
							</ul></li>
						<!-- <li><a href="<%=request.getContextPath()%>/about">Beaute</a></li>					 -->
						<li><a href="<%=request.getContextPath()%>/shipping">Phương thức vận chuyển</a></li>
						<li><a href="<%=request.getContextPath()%>/guarantee">Chính sách đổi trả</a></li>				
						<li><a href="<%=request.getContextPath()%>/contact">Liên hệ</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!--/.navbar-->
	</div>
	<!----End-top-nav---->
	<!----End-Header---->
	
	<script src="<c:url value='/js/client/header.js'/>" ></script>
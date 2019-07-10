<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Themify Icons-->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Owl Carousel  -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<br>
	<div class="gtco-loader"></div>

	<div id="page">


		<div class="page-inner">
			<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">

				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div id="gtco-logo">
							<a href="login.jsp">这里登录 <em>.</em></a>
						</div>
					</div>
					<div class="col-xs-8 text-right menu-1">
						<ul>
							<li><a href="index.jsp">主页</a></li>
							<li><a href="java.jsp">JAVA</a></li>
							<li><a href="showborad.jsp">留言</a></li>
							<li><a href="idea.jsp">我的想法</a></li>
						</ul>
					</div>
				</div>

			</div>
			</nav>

			<header id="gtco-header" class="gtco-cover" role="banner"
				style="background-image: url(images/img_4.jpg)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">


						<div class="row row-mt-15em">
							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span style="color: red"> <s:actionmessage /></span> <span
									style="color: red"><s:actionerror /></span> <span
									class="intro-text-small">${requestScope.msg}<br>欢迎
									Space
								</span>
							</div>
							<!--登录注册框-->
							<div class="col-md-4 col-md-push-1 animate-box"
								data-animate-effect="fadeInRight">
								<div class="form-wrap">
									<div class="tab">
										<ul class="tab-menu">
											<li class="active gtco-first"><a href="#"
												data-tab="signup">注册</a></li>
											<li class="gtco-second"><a href="#" data-tab="login">登录</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-content-inner active" data-content="signup">
												<!-- 注册 -->

												<form
													action="${pageContext.request.contextPath }/registerAction"
													method="post">
													<div class="row form-group">
														<div class="col-md-12">
															<label for="username">邮箱或用户名</label> <input type="text"
																class="form-control" name="username">
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="password">密码</label> <input type="password"
																class="form-control" name="password">
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="password">再次输入密码</label> <input
																type="password" class="form-control" name="password1">
														</div>
													</div>

													<div class="row form-group">
														<div class="col-md-12">
															<input type="submit" class="btn btn-primary" value="注册">
														</div>
													</div>
												</form>

												<a>已有账户？请登录</a>
											</div>

											<div class="tab-content-inner" data-content="login">

												<form
													action="${pageContext.request.contextPath }/loginAction"
													method="post">
													<div class="row form-group">
														<div class="col-md-12">
															<label for="username">用户名或邮箱</label> <input type="text"
																class="form-control" name="username">
														</div>
													</div>
													<div class="row form-group">
														<div class="col-md-12">
															<label for="password">密码</label> <input type="password"
																class="form-control" name="password">
														</div>
													</div>

													<div class="row form-group">
														<div class="col-md-12">
															<input type="submit" class="btn btn-primary" value="登录">
														</div>
													</div>
												</form>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
			</header>
			<!--页脚-->
			<footer id="gtco-footer" role="contentinfo">
			<div class="gtco-container">
				<div class="row row-p	b-md">

					<div class="col-md-4">
						<div class="gtco-widget">
							<h3>
								About <span class="footer-logo">Splash<span>.<span></span>
							</h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Tempore eos molestias quod sint ipsum possimus temporibus
								officia iste perspiciatis consectetur in fugiat repudiandae cum.
								Totam cupiditate nostrum ut neque ab?</p>
						</div>
					</div>

					<div class="col-md-4 col-md-push-1">
						<div class="gtco-widget">
							<h3>Links</h3>
							<ul class="gtco-footer-links">
								<li><a href="#">Knowledge Base</a></li>
								<li><a href="#">Career</a></li>
								<li><a href="#">Press</a></li>
								<li><a href="#">Terms of services</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-4">
						<div class="gtco-widget">
							<h3>Get In Touch</h3>
							<ul class="gtco-quick-contact">
								<li><a href="#"><i class="icon-phone"></i> +1 234 567
										890</a></li>
								<li><a href="#"><i class="icon-mail2"></i> info@</a></li>
								<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row copyright">
					<div class="col-md-12">
						<p class="pull-left">
							<small class="block">Copyright &copy; 2016.Company name
								All rights reserved.<a target="_blank"
								href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
							</small>
						</p>
						<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
						</p>
					</div>
				</div>

			</div>
			</footer>
		</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>



</body>
</html>
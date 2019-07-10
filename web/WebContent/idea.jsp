<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
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
							<li class="active"><a href="idea.jsp">我的想法</a></li>
							<li><a href="login.jsp">退出</a></li>
						</ul>
					</div>
				</div>

			</div>
			</nav>

			<header id="gtco-header" class="gtco-cover gtco-cover-sm"
				role="banner" style="background-image: url(images/img_4.jpg)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="row row-mt-15em">

							<div class="col-md-7 mt-text animate-box"
								data-animate-effect="fadeInUp">
								<span class="intro-text-small">Don't be shy</span>
								<h1>写下您想写的</h1>
							</div>

						</div>

					</div>
				</div>
			</div>
			</header>


			<div class="gtco-section border-bottom">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-12">
							<div class="col-md-6 animate-box">
								<a>${requestScope.msg}<br></a>
								<h3>
									想法或意见
									<!-- 没有登录提示 -->
								</h3>
								<form
									action="${pageContext.request.contextPath }/saveIdeaAction"
									method="post">
									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="name">Name</label> <input
												type="text" id="name" name="username" class="form-control"
												placeholder="您的用户名">
										</div>

									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="email">Email</label> <input
												type="text" id="email" name="email" class="form-control"
												placeholder="邮箱地址">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-md-12">
											<label class="sr-only" for="message">Message</label>
											<textarea name="text" id="text" cols="30" rows="10"
												" class="form-control" placeholder="写下想法..."></textarea>
										</div>
									</div>
									<div class="form-group">
										<input type="submit" value="提交" class="btn btn-primary">
									</div>

								</form>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
		<!--页脚-->
		<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>
							关于<span class="footer-logo">空间<span>.<span></span>
						</h3>
						<p>这是一个叼炸天的网页</p>
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
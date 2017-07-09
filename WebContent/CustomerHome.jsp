<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE jsp>
<jsp lang="en">
<head>
<title>Food At Your Door</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : false,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 1,
					max : 4
				},
				height : 'auto',
				width : 240,
			},
			responsive : false,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : false,
				onTouch : false
			}
		});
	});

</script>
<style type="text/css">
div.abc{
	margin: 10px;
	padding: 10px;
</style>
</head>
<body>
	<div class="main">
	<div  class="abc"  align="right">
	
				<%
						String path = (String) session.getAttribute("username");
						if (path != null) {
					%>

					<h3>
						welcome
						<%=path%></h3>
					<%
						}
					%>
	</div>
		<header>

			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.jsp"><img src="images/logo.png" alt=""></a>
					</h1>
					<div class="menu_block">
						<nav>
							<ul class="sf-menu">
								<li class="current"><a href="index.jsp">Home</a></li>
								<li class="with_ul"><a href="Search.jsp">Search</a>
								<li><a href="menu.jsp">Menu</a></li>
								<li><a href="portfolio.jsp">Portfolio</a></li>
								<li><a href="news.jsp">News</a></li>
								<li><a href="logout.html">Logout</a></li>
							</ul>

						</nav>
						
						<!-- <div class="clear"></div> -->
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
	</div>
</body>
</jsp>
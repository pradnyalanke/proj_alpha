<!DOCTYPE jsp>
<jsp lang="en">
<head>
<title>Food At Your Door</title>
<meta charset="utf-8">
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
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(function () {
    $('.carousel1').carouFredSel({
        auto: false,
        prev: '.prev',
        next: '.next',
        width: 960,
        items: {
            visible: {
                min: 1,
                max: 4
            },
            height: 'auto',
            width: 240,
        },
        responsive: false,
        scroll: 1,
        mousewheel: false,
        swipe: {
            onMouse: false,
            onTouch: false
        }
    });
});
</script>
<style type="text/css">
div.abc {
	margin: 10px;
	padding: 10px;
}
</style>
</head>
<body>
	<div class="main">
		<div class="abc" align="right">

			<%		String path = (String) session.getAttribute("username");
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
								<li class="with_ul"><a href="#">Sign In</a>
									<ul>
										<li><a href="CustomerLoginPage.jsp">Customer</a></li>
										<li><a href="VendorLoginPage.jsp">Vendor</a></li>
										<!--     <li><a href="#">Admin</a></li> -->
									</ul>
								<li class="with_ul"><a href="#">Register</a>
									<ul>
										<li><a href="RegisterCustomer.jsp">Customer</a></li>
										<li><a href="VendorRegistrationPage.jsp">Vendor</a></li>

									</ul></li>
								<li><a href="menu.jsp">Menu</a></li>
							<!-- 	<li><a href="portfolio.jsp">Portfolio</a></li> -->
								<li><a href="news.jsp">News</a></li>
								<li><a href="contacts.jsp">Contacts</a></li>
								<li><a href="logout.html">Logout</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
		<div class="slider-relative">
			<div class="slider-block">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slide.jpg" alt=""></li>
						<li><img src="images/slide1.jpg" alt=""></li>
						<li class="mb0"><img src="images/slide2.jpg" alt=""></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="content page1">
			<div class="container_12">
				<div class="grid_7">
					<h2>Welcome</h2>
					<div class="page1_block col1">
						<img src="images/welcome_img.png" alt="">
						<div class="extra_wrapper">
							<p>
								<span class="col2"></span>We afford the motto "Making Online
								Food Ordering Fast and easy".Our service allows you to find all
								the vendors available near by,which can deliver to your house. <br>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_5">
					<h2>Features</h2>
					<ul class="list">
						<li><a href="#">Determine and stay within budget</a></li>
						<li><a href="#">Various varieties of services</a></li>
						<li><a href="#">Provide preferred vendor's list</a></li>
						<li><a href="#">Assist with choosing right vendor service</a></li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="grid_12">
					<div class="hor_separator"></div>
				</div>
				<div class="grid_12">
					<div class="car_wrap">
						<h2>Best Choice</h2>
						<a href="#" class="prev"></a><a href="#" class="next"></a>
						<ul class="carousel1">
							<li>
								<div>
									<img src="images/page1_img1.jpg" alt="">
									<div class="col1 upp">
										<a href="#">Lorem ipsum doamet consectet</a>
									</div>
									<span> Dorem ipsum dolor amet consectetur</span>
									<div class="price">Rs 250</div>
								</div>
							</li>
							<li>
								<div>
									<img src="images/page1_img2.jpg" alt="">
									<div class="col1 upp">
										<a href="#">Lorem ipsum doamet consectet</a>
									</div>
									<span> Dorem ipsum dolor amet consectetur</span>
									<div class="price">Rs 400</div>
								</div>
							</li>
							<li>
								<div>
									<img src="images/page1_img3.jpg" alt="">
									<div class="col1 upp">
										<a href="#">Lorem ipsum doamet consectet</a>
									</div>
									<span> Dorem ipsum dolor amet consectetur</span>
									<div class="price">Rs 450</div>
								</div>
							</li>
							<li>
								<div>
									<img src="images/page1_img4.jpg" alt="">
									<div class="col1 upp">
										<a href="#">Lorem ipsum doamet consectet</a>
									</div>
									<span> Dorem ipsum dolor amet consectetur</span>
									<div class="price">Rs 300</div>
								</div>
							</li>
							<li>
								<div>
									<img src="images/page1_img3.jpg" alt="">
									<div class="col1 upp">
										<a href="#">Lorem ipsum doamet consectet</a>
									</div>
									<span> Dorem ipsum dolor amet consectetur</span>
									<div class="price">Rs 200</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
				<div class="bottom_block">
					<div class="grid_6">
						<h3>Follow Us</h3>
						<div class="socials">
							<a href="#"></a> <a href="#"></a> <a href="#"></a>
						</div>
						<nav>
							<ul>
								<li class="current"><a href="index.jsp">Home</a></li>
								<li><a href="about-us.jsp">Login</a></li>
								<li><a href="about-us.jsp">About Us</a></li>
								<li><a href="menu.jsp">Menu</a></li>
								<li><a href="portfolio.jsp">Portfolio</a></li>
								<li><a href="news.jsp">News</a></li>
								<li><a href="contacts.jsp">Contacts</a></li>
							</ul>
						</nav>
					</div>
					<div class="grid_6">
						<h3>Email Updates</h3>
						<p class="col1">
							Join our digital mailing list and get news<br> deals and be
							first to know about events
						</p>
						<form id="newsletter" action="#">
							<div class="success">Your subscribe request has been sent!</div>
							<label class="email"> <input type="email"
								value="Enter e-mail address"> <a href="#" class="btn"
								data-type="submit">subscribe</a> <span class="error">*This
									is not a valid email address.</span>
							</label>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container_12">
			<div class="grid_12">
				Delish on the Go | <a href="#">Privacy Policy</a> | Design by: <a
					href="#">DelishOnTheGo.com</a>
			</div>
			<div class="clear"></div>
		</div>
	</footer>
</body>
</jsp>
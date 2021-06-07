<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    
    <title>Professional Chocolates</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Cakes Bakery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />

	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
	<!-- //Web-Fonts -->

</head>
<body style="background-color:#DC7633">
    
	<div class="mian-content">
		<!-- header -->
		<header>
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="logo text-left">
					<h1>
						<a class="navbar-brand" href="index.aspx" style="color:white">
							<%--<img src="images/logo.png" alt="" class="img-fluid" width="100" height="100" border-radius="30%" >--%>
                            Professional Chocolates</a>
                            <%--<img src="images/flogo.jpg" alt="" class="img-fluid" width="300" height="150" border-radius="30%"></a>--%>
					</h1>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">

					</span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-lg-auto text-lg-right text-center">
						<li class="nav-item active">
							<a class="nav-link" href="index.aspx" style="color:white">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<%--<li class="nav-item">
							<a style="color:maroon" class="nav-link" href="aboutus.aspx">About Us</a>
						</li>--%>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							    aria-haspopup="true" aria-expanded="false" style="color:white">
								For Occassion
							</a>
							<div class="dropdown-menu text-lg-left text-center" aria-labelledby="navbarDropdown">
								<a href="diwalispecials.aspx" style="color:maroon">Diwali Specials</a>
								<a href="christmasspecials.aspx" title="" style="color:maroon">Christmas Specials</a>
								<a href="valentinesspecials.aspx" title="" style="color:maroon">Valentines Specials</a>
								
							</div>
						</li>
						
                        <li class="nav-item">
							<a class="nav-link" href="favorites.aspx" style="color:white">Favorites</a>
						</li><%
                                 if(Session["email"]==null)
                                          { %>
                                        <li><a href="login.aspx">Login</a></li>
                                        <%}
                                          else
                                          { %>
                                        <li><a href="viewcart.aspx"><img src="images/mycart.png" alt="View cart" height="50" width="50" /></a></li>
                                        <li><a href="Logout.aspx" style="color:white">Logout</a></li>
                                        <li ><B style="color:white"> Welcome <%=Session["username"] %></B></li>
                                        <%} %>
                            
					</ul>
					<!-- menu button -->
					<div class="menu">
						<a href="#" class="navicon"></a>
						<div class="toggle">
							<ul class="toggle-menu list-unstyled">
							    <li>
									<a href="aboutus.aspx">About Us</a>
								</li>
                                
								<li>
									<a href="testimonials.aspx">Testimonials</a>
								</li>
								<li>
									<a href="Feedback.aspx">Feedback</a>
								</li>
								<li>
									<a href="contact.aspx">Contact Us</a>
								</li>
                                <li>
									<a href="signup.aspx">Sign Up</a>
								</li>
                                
							</ul>
						</div>
					</div>
					<!-- //menu button -->
				</div>
			</nav>
		</header>
		<!-- //header -->

		<!-- banner -->
		<!-- main image slider container -->
		<div id="slider-main">
			<div class="banner-text-agile text-center">
				<div class="container">
					<h3 class="text-white font-weight-bold mb-3" style="color:maroon">The Taste Of Our Amazing Chocolates!!!</h3>
					
				</div>
			</div>
			<!-- previous button -->
			<button id="prev">
				<i class="fas fa-chevron-left"></i>
			</button>

			<!-- image container -->
			<div id="slider"></div>

			<!-- next button -->
			<button id="next">
				<i class="fas fa-chevron-right"></i>
			</button>

			<!-- small circles container -->
			<div id="circles"></div>

		</div>
		<!-- end of main image slider container -->
		
		<!-- //banner -->

	
	</section>

    
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <!-- footer -->
	<footer class="text-center py-sm-4 py-3">
		<div class="container py-xl-5 py-3">
			<div class="w3l-footer footer-social-agile mb-4">
				<ul class="list-unstyled">
					<li>
						<a href="#">
							<i class="fab fa-facebook-f"></i>
						</a>
					</li>
					<li class="mx-1">
						<a href="#">
							<i class="fab fa-twitter"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fab fa-dribbble"></i>
						</a>
					</li>
					<li class="ml-1">
						<a href="#">
							<i class="fab fa-vk"></i>
						</a>
					</li>
				</ul>
			</div>
			<!-- copyright -->
			<p class="copy-right-grids text-light my-lg-5 my-4 pb-4">© 2018 Professional Chocolates .Designed by Neel Gala
		>
			</p>
			<!-- //copyright -->
		</div>
		<!-- chef -->
		<img src="images/chef.png" alt="" class="img-fluid chef-style" />
		<!-- //chef -->
	</footer>
	<!-- //footer -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->

	<!-- flexisel (for special offers) -->
	<script src="js/jquery.flexisel.js"></script>
	<script>
	    $(window).load(function () {
	        $("#flexiselDemo1").flexisel({
	            visibleItems: 1,
	            animationSpeed: 1000,
	            autoPlay: true,
	            autoPlaySpeed: 3000,
	            pauseOnHover: true,
	            enableResponsiveBreakpoints: true,
	            // responsiveBreakpoints: {
	            // 	portrait: {
	            // 		changePoint: 480,
	            // 		visibleItems: 1
	            // 	},
	            // 	landscape: {
	            // 		changePoint: 640,
	            // 		visibleItems: 2
	            // 	},
	            // 	tablet: {
	            // 		changePoint: 768,
	            // 		visibleItems: 2
	            // 	}
	            // }
	        });

	    });
	</script>
	<!-- //flexisel (for special offers) -->

	<!-- script for tabs -->
	<script>
	    $(function () {

	        var menu_ul = $('.faq > li > ul'),
				menu_a = $('.faq > li > a');

	        menu_ul.hide();

	        menu_a.click(function (e) {
	            e.preventDefault();
	            if (!$(this).hasClass('active')) {
	                menu_a.removeClass('active');
	                menu_ul.filter(':visible').slideUp('normal');
	                $(this).addClass('active').next().stop(true, true).slideDown('normal');
	            } else {
	                $(this).removeClass('active');
	                $(this).next().stop(true, true).slideUp('normal');
	            }
	        });

	    });
	</script>
	<!-- script for tabs -->

	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
	    $('.counter').countUp();
	</script>
	<!-- //stats -->

	<!-- menu-js -->
	<script>
	    $('.navicon').on('click', function (e) {
	        e.preventDefault();
	        $(this).toggleClass('navicon--active');
	        $('.toggle').toggleClass('toggle--active');
	    });
	</script>
	<!-- //menu-js -->

	<!-- banner slider -->
	<script src="js/image-slider.js"></script>
	<link rel="stylesheet" type="text/css" href="css/image-slider.css">
	<!-- //banner slider -->

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/cakes-bakery.js"></script>

	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- //Js files -->

</body>
</html>

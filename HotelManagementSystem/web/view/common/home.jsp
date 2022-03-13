<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Holiday</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--
        Holiday Template
        http://www.templatemo.com/tm-475-holiday
        -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
        <link href="../css/flexslider.css" rel="stylesheet">
        <link href="../css/templatemo-style.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body class="tm-gray-bg">
        <!-- Header -->
        <div class="tm-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
                        <a href="#" class="tm-site-name">HOTEL MANAGEMENT</a>	
                    </div>
                    <div class="col-lg-6 col-md-8 col-sm-9">
                        <div class="mobile-menu-icon">
                            <i class="fa fa-bars"></i>
                        </div>
                        <nav class="tm-nav">
                            <ul>
                                <li><a href="index.html" class="active">Home</a></li>
                                    <c:choose>
                                        <c:when test="${sessionScope.account != null}">
                                        <li><a href="">HELLO: ${sessionScope.account.getDisplayName()}</a></li>
                                        <li><a href="../logout">Logout</a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li><a href="../login">Login</a></li>
                                        </c:otherwise>
                                    </c:choose>

                            </ul>
                        </nav>		
                    </div>				
                </div>
            </div>	  	
        </div>

        <!-- Banner -->
        <section class="tm-banner">
            <!-- Flexslider -->
            <div class="flexslider flexslider-banner">
                <ul class="slides">
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Find <span class="tm-yellow-text">The Best</span> Place</h1>
                            <p class="tm-banner-subtitle">For Your Holidays</p>
                        </div>
                        <img src="../img/banner-1.jpg" alt="Image" />	
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Lorem <span class="tm-yellow-text">Ipsum</span> Dolor</h1>
                            <p class="tm-banner-subtitle">Wonderful Destinations</p>
                        </div>
                        <img src="../img/banner-2.jpg" alt="Image" />
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Proin <span class="tm-yellow-text">Gravida</span> Nibhvell</h1>
                            <p class="tm-banner-subtitle">Velit Auctor</p>
                        </div>
                        <img src="../img/banner-3.jpg" alt="Image" />
                    </li>
                </ul>
            </div>	
        </section>

        <!-- gray bg -->	
        <section class="container tm-home-section-1" id="more">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-center">
                        <img src="../img/index-01.jpg" alt="image" class="img-responsive">

                    </div>				
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-center">
                        <img src="../img/index-01.jpg" alt="image" class="img-responsive">

                    </div>				
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-right">
                        <img src="../img/index-02.jpg" alt="image" class="img-responsive">
                    </div>				
                </div>
            </div>

            <div style="text-align: center;">
                <button type="button" class="btn btn-primary"><a href="../customer/list_room" style="text-decoration: none;color: white;">
                        Đặt phòng tại đây</a></button>
            </div>
            <div class="section-margin-top">
                <div class="row">				
                    <div class="tm-section-header">
                        <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
                        <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Một số phòng cao cấp</h2></div>
                        <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                        <div class="tm-home-box-2">						
                            <img src="../img/room/room1.jpg" alt="image" class="img-responsive">
                            <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                            <p class="tm-date">Đặt phòng ngay</p>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                        <div class="tm-home-box-2">						
                            <img src="../img/room/room2.jpg" alt="image" class="img-responsive" style="height: 168px;">
                            <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                            <p class="tm-date">Nhiều ữu đãi</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                        <div class="tm-home-box-2">						
                            <img src="../img/room/room3.jpg" alt="image" class="img-responsive">
                            <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                            <p class="tm-date">Đặt phòng ngay</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                        <div class="tm-home-box-2 tm-home-box-2-right">						
                            <img src="../img/room/room44.jpg" alt="image" class="img-responsive">
                            <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                            <p class="tm-date">Nhiều ữu đãi</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>		

        <!-- white bg -->
        <section class="tm-white-bg section-padding-bottom">
            <div class="container">
                <div class="row">
                    <div class="tm-section-header section-margin-top">
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                        <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Lời khuyên</h2></div>
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
                    </div>
                    <div class="col-lg-6">
                        <div class="tm-home-box-3">
                            <div class="tm-home-box-3-img-container">
                                <img src="../img/room/room5.jpg" alt="image" class="img-responsive">	
                            </div>						
                            <div class="tm-home-box-3-info">
                                <p class="tm-home-box-3-description">
                                    Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</p>

                            </div>						
                        </div>					
                    </div>
                    <div class="col-lg-6">
                        <div class="tm-home-box-3">
                            <div class="tm-home-box-3-img-container">
                                <img src="../img/room/room6.jpg" alt="image" class="img-responsive">	
                            </div>						
                            <div class="tm-home-box-3-info">
                                <p class="tm-home-box-3-description">
                                    Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</p>

                            </div>						
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="tm-home-box-3">
                            <div class="tm-home-box-3-img-container">
                                <img src="../img/room/room7.jpg" alt="image" class="img-responsive">	
                            </div>						
                            <div class="tm-home-box-3-info">
                                <p class="tm-home-box-3-description">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</p>

                            </div>						
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="tm-home-box-3">
                            <div class="tm-home-box-3-img-container">
                                <img src="../img/room/room8.jpg" alt="image" class="img-responsive">	
                            </div>						
                            <div class="tm-home-box-3-info">
                                <p class="tm-home-box-3-description">Phòng Deluxe được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát toàn cảnh thành phố mang đến cho bạn một không gian thanh bình và dễ chịu sẽ là sự lựa chọn cho những doanh nhân và khách du lịch.</p>

                            </div>						
                        </div>
                    </div>
                </div>		
            </div>
        </section>
        <footer class="tm-black-bg">
            <div class="container">
                <div class="row">
                    <p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name 

                        | Designed by templatemo</p>
                </div>
            </div>		
        </footer>
        <script type="text/javascript" src="../js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
        <script type="text/javascript" src="../js/moment.js"></script>							<!-- moment.js -->
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>					<!-- bootstrap js -->
        <script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script type="text/javascript" src="../js/jquery.flexslider-min.js"></script>
        <!--
                <script src="js/froogaloop.js"></script>
                <script src="js/jquery.fitvid.js"></script>
        -->
        <script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
        <script>
            // HTML document is loaded. DOM is ready.
            $(function () {

                $('#hotelCarTabs a').click(function (e) {
                    e.preventDefault()
                    $(this).tab('show')
                })

                $('.date').datetimepicker({
                    format: 'MM/DD/YYYY'
                });
                $('.date-time').datetimepicker();

                // https://css-tricks.com/snippets/jquery/smooth-scrolling/
                $('a[href*=#]:not([href=#])').click(function () {
                    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                        if (target.length) {
                            $('html,body').animate({
                                scrollTop: target.offset().top
                            }, 1000);
                            return false;
                        }
                    }
                });
            });

            // Load Flexslider when everything is loaded.
            $(window).load(function () {
                // Vimeo API nonsense

                /*
                 var player = document.getElementById('player_1');
                 $f(player).addEvent('ready', ready);
                 
                 function addEvent(element, eventName, callback) {
                 if (element.addEventListener) {
                 element.addEventListener(eventName, callback, false)
                 } else {
                 element.attachEvent(eventName, callback, false);
                 }
                 }
                 
                 function ready(player_id) {
                 var froogaloop = $f(player_id);
                 froogaloop.addEvent('play', function(data) {
                 $('.flexslider').flexslider("pause");
                 });
                 froogaloop.addEvent('pause', function(data) {
                 $('.flexslider').flexslider("play");
                 });
                 }
                 */



                // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
                /*
                 
                 $(".flexslider")
                 .fitVids()
                 .flexslider({
                 animation: "slide",
                 useCSS: false,
                 animationLoop: false,
                 smoothHeight: true,
                 controlNav: false,
                 before: function(slider){
                 $f(player).api('pause');
                 }
                 });
                 */




//	For images only
                $('.flexslider').flexslider({
                    controlNav: false
                });


            });
        </script>
    </body>
</html>
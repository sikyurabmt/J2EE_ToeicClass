<%@page import="BEAN.Course"%>
<%@page import="DAO.CourseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
    </head>
    <body>
        <%
            CourseDAO courseDAO = new CourseDAO();
        %>
        <!---->
        <div class="container">
            <div class="content">
                <div class="content-top">
                    <h3 class="future">KHOÁ HỌC</h3>
                    <div class="content-top-in">

                        <%
                            for (Course c : courseDAO.getAllCourse()) {
                        %>
                        <div class="col-md-3 md-col" style="margin-bottom: 10px">
                            <div class="col-md">
                                <a href="#"><img  src="images/pi.jpg" alt="" /></a>	
                                <div class="top-content">
                                    <h5><a href="#"><%=c.getName()%></a></h5>
                                    <div class="white">
                                        <a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2" style="margin-right: 50px;">Xem chi tiết</a>
                                        <a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical">Mua ngay</a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>							
                            </div>
                        </div>
                        <%
                            }
                        %>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!---->
                <div class="content-middle">
                    <h3 class="future">TIN TỨC</h3>
                    <div class="content-middle-in">
                        <ul id="flexiselDemo1">			
                            <li><img src="images/ap.png"/></li>
                            <li><img src="images/ap1.png"/></li>
                            <li><img src="images/ap2.png"/></li>
                            <li><img src="images/ap3.png"/></li>
                        </ul>
                        <script type="text/javascript">
                            $(window).load(function () {
                                $("#flexiselDemo1").flexisel({
                                    visibleItems: 4,
                                    animationSpeed: 1000,
                                    autoPlay: true,
                                    autoPlaySpeed: 3000,
                                    pauseOnHover: true,
                                    enableResponsiveBreakpoints: true,
                                    responsiveBreakpoints: {
                                        portrait: {
                                            changePoint: 480,
                                            visibleItems: 1
                                        },
                                        landscape: {
                                            changePoint: 640,
                                            visibleItems: 2
                                        },
                                        tablet: {
                                            changePoint: 768,
                                            visibleItems: 3
                                        }
                                    }
                                });
                            });
                        </script>
                        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                    </div>
                </div>
                <!---->
                <div class="content-bottom">
                    <h3 class="future">LATEST</h3>
                    <div class="content-bottom-in">
                        <ul id="flexiselDemo2">			
                            <li><div class="col-md men">
                                    <a href="single.html" class="compare-in "><img  src="images/pi4.jpg" alt="" />
                                        <div class="compare in-compare">
                                            <span>Add to Compare</span>
                                            <span>Add to Whislist</span>
                                        </div></a>
                                    <div class="top-content bag">
                                        <h5><a href="single.html">Symbolic Bag</a></h5>
                                        <div class="white">
                                            <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                                            <p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>							
                                </div></li>
                            <li><div class="col-md men">
                                    <a href="single.html" class="compare-in "><img  src="images/pi5.jpg" alt="" />
                                        <div class="compare in-compare">
                                            <span>Add to Compare</span>
                                            <span>Add to Whislist</span>
                                        </div></a>	
                                    <div class="top-content bag">
                                        <h5><a href="single.html">Interesting Read</a></h5>
                                        <div class="white">
                                            <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                                            <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>5</span></p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>							
                                </div></li>
                            <li><div class="col-md men">
                                    <a href="single.html" class="compare-in "><img  src="images/pi6.jpg" alt="" />
                                        <div class="compare in-compare">
                                            <span>Add to Compare</span>
                                            <span>Add to Whislist</span>
                                        </div></a>	
                                    <div class="top-content bag">
                                        <h5><a href="single.html">The Carter</a></h5>
                                        <div class="white">
                                            <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                                            <p class="dollar"><span class="in-dollar">$</span><span>1</span><span>0</span></p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>							
                                </div></li>
                            <li><div class="col-md men">
                                    <a href="single.html" class="compare-in "><img  src="images/pi7.jpg" alt="" />
                                        <div class="compare in-compare">
                                            <span>Add to Compare</span>
                                            <span>Add to Whislist</span>
                                        </div></a>	
                                    <div class="top-content bag">
                                        <h5><a href="single.html">Onesie</a></h5>
                                        <div class="white">
                                            <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                                            <p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>							
                                </div></li>
                        </ul>
                        <script type="text/javascript">
                            $(window).load(function () {
                                $("#flexiselDemo2").flexisel({
                                    visibleItems: 4,
                                    animationSpeed: 1000,
                                    autoPlay: true,
                                    autoPlaySpeed: 3000,
                                    pauseOnHover: true,
                                    enableResponsiveBreakpoints: true,
                                    responsiveBreakpoints: {
                                        portrait: {
                                            changePoint: 480,
                                            visibleItems: 1
                                        },
                                        landscape: {
                                            changePoint: 640,
                                            visibleItems: 2
                                        },
                                        tablet: {
                                            changePoint: 768,
                                            visibleItems: 3
                                        }
                                    }
                                });
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style>
    /*
** Style Simple Ecommerce Theme for Bootstrap 4
** Created by T-PHP https://t-php.fr/43-theme-ecommerce-bootstrap-4.html
*/
    .bloc_left_price {
        color: #c01508;
        text-align: center;
        font-weight: bold;
        font-size: 150%;
    }
    .category_block li:hover {
        background-color: #007bff;
    }
    .category_block li:hover a {
        color: #ffffff;
    }
    .category_block li a {
        color: #343a40;
    }
    .add_to_cart_block .price {
        color: #c01508;
        text-align: center;
        font-weight: bold;
        font-size: 200%;
        margin-bottom: 0;
    }
    .add_to_cart_block .price_discounted {
        color: #343a40;
        text-align: center;
        text-decoration: line-through;
        font-size: 140%;
    }
    .product_rassurance {
        padding: 10px;
        margin-top: 15px;
        background: #ffffff;
        border: 1px solid #6c757d;
        color: #6c757d;
    }
    .product_rassurance .list-inline {
        margin-bottom: 0;
        text-transform: uppercase;
        text-align: center;
    }
    .product_rassurance .list-inline li:hover {
        color: #343a40;
    }
    .reviews_product .fa-star {
        color: gold;
    }
    .pagination {
        margin-top: 20px;
    }
    footer {
        background: #343a40;
        padding: 40px;
    }
    footer a {
        color: #f8f9fa!important
    }

</style>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="../customer/list_room">HOTEL MANAGEMENT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../common/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../customer/list_room">Phòng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../customer/schedule_booking">Lịch đặt phòng của bạn</a>
                </li>
                <c:if test="${sessionScope.account != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="../customer/profile">${sessionScope.account.getDisplayName()}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../logout">Logout</a>
                    </li>
                </c:if>

            </ul>

        </div>
    </div>
</nav>

<!--container-->
<div class="container-fluid" style="margin-top: 20px;margin-bottom: 20px;">
    <div class="card">
        <div class="row">
            <aside class="col-sm-6">
                <article class="gallery-wrap"> 
                    <div class="img-big-wrap">
                        <div> <a href="../img/room/${room.getImage()}"><img src="../img/room/${room.getImage()}" style="width: 100%;text-align: center;"></a></div>
                    </div> <!-- slider-product.// -->
                </article> <!-- gallery-wrap .end// -->
            </aside>
            <aside class="col-sm-6">
                <article class="card-body p-5">
                    <h3 class="title mb-3" style="font-weight: bold;">${product.getProductName()}</h3>

                    <dl class="param param-feature">
                        <dt>Tên phòng</dt>
                        <dd>${room.getRoomName()}</dd>
                    </dl>  <!-- item-property-hor .// -->
                    <dl class="param param-feature">
                        <dt>Loại phòng</dt>
                        <dd>${room.getRoomType().getRoomTypeName()}</dd>
                    </dl>  <!-- item-property-hor .// -->
                    <dl class="param param-feature">
                        <dt>Số người ở</dt>
                        <dd>${room.getRoomType().getNumberOfPeople()}</dd>
                    </dl>  <!-- item-property-hor .// -->
                    <p class="price-detail-wrap"> 
                        <span class="price h3 text-warning"> 
                            <span class="currency">Giá: </span><span class="num">${room.getRoomType().getPrice()}</span>
                        </span> 
                    </p> <!-- price-detail-wrap .// -->
                    <dl class="item-property">
                        <dt>Description</dt>
                        <dd><p>${room.getRoomType().getDescription()}</p></dd>
                    </dl>

                    
                    <dl class="param param-feature">
                        <dt>Tình trạng</dt>
                        <dd>${room.isStatus() == true ? "Còn phòng":"Hết phòng"}</dd>
                    </dl>  <!-- item-property-hor .// -->

                    
                </article> <!-- card-body.// -->
            </aside> <!-- col.// -->
        </div> <!-- row.// -->
    </div> <!-- card.// -->
</div>

<footer class="text-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-lg-4 col-xl-3">
                <h5>About</h5>
                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                <p class="mb-0">
                    Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                </p>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                <h5>Informations</h5>
                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                <ul class="list-unstyled">
                    <li><a href="">Link 1</a></li>
                    <li><a href="">Link 2</a></li>
                    <li><a href="">Link 3</a></li>
                    <li><a href="">Link 4</a></li>
                </ul>
            </div>

            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                <h5>Others links</h5>
                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                <ul class="list-unstyled">
                    <li><a href="">Link 1</a></li>
                    <li><a href="">Link 2</a></li>
                    <li><a href="">Link 3</a></li>
                    <li><a href="">Link 4</a></li>
                </ul>
            </div>

            <div class="col-md-4 col-lg-3 col-xl-3">
                <h5>Contact</h5>
                <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                <ul class="list-unstyled">
                    <li><i class="fa fa-home mr-2"></i> My company</li>
                    <li><i class="fa fa-envelope mr-2"></i> email@example.com</li>
                    <li><i class="fa fa-phone mr-2"></i> + 33 12 14 15 16</li>
                    <li><i class="fa fa-print mr-2"></i> + 33 12 14 15 16</li>
                </ul>
            </div>
            <div class="col-12 copyright mt-3">
                <p class="float-left">
                    <a href="#">Back to top</a>
                </p>
                <p class="text-right text-muted">created with <i class="fa fa-heart"></i> by <a href="https://t-php.fr/43-theme-ecommerce-bootstrap-4.html"><i>t-php</i></a> | <span>v. 1.0</span></p>
            </div>
        </div>
    </div>
</footer>
<%-- 
    Document   : home
    Created on : Apr 8, 2023, 10:28:02 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="./inc/header.jsp" %>
<main>
    <div class="shopify-section">
        <div class="slider-area home1-slider-bg mb-65">
            <div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://giaythoitranganhkhoa.com/image/catalog/revslider_media_folder/main-banner-giay-vai-nu.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://mona.media/wp-content/uploads/2021/06/banner-giay.png" class="d-block w-100" alt="...">
                    </div>

                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

    
    <div class="shopify-section">
        <div class="categories-product-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title title2-border-color">
                            <h2>OUR CATEGORIES</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${categoryList}" var="category">
                        <div class="category-product col-md-2">
                            <div class="category-product-img">
                                <a href="CategoryServlet?categoryId=${category.id}"><img style="height: 210px; width: 210px;" src="${category.image}"
                                                alt=""></a>
                            </div>
                            <div class="category-product-content">
                                <h3>${category.name}</h3>
                                <p></p>
                                <p>There are many variations of passages of Lorem Ipsum available,...</p>
                                <button><a href="">SHOP NOW</a></button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
  
        <div class="shopify-section">
        <div class="banner-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12">
                        <div class="single-banner mb-30">
                            <div class="banner-img img-full">
                                <a href=""><img style="width: 370px; height: 250px;"
                                                src="https://thumbs.dreamstime.com/z/sale-onam-banner-packet-ribbon-vector-illustration-74366001.jpg"
                                                alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="single-banner mb-30">
                            <div class="banner-img img-full">
                                <a href=""><img style="width: 370px; height: 250px;"
                                                src="https://image.freepik.com/free-vector/sale-banners-geometric-set-with-text-memphis-style_44695-324.jpg"
                                                alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="single-banner mb-30">
                            <div class="banner-img img-full">
                                <a href=""><img style="width: 370px; height: 250px;"
                                                src="https://i.pinimg.com/736x/a0/76/a1/a076a153d6049ec29f48a7a7254b9dcd.jpg"
                                                alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="shopify-section">
        <div class="product-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title title2-border-color">
                            <h2>product</h2>
                            <div class="product-tab-menu2">
                                <ul class="nav">
                                    <li><a href="">New Arrival 2</a></li>
                                    <li><a href="">Bestseller</a></li>
                                    <li><a href="">Featured Products</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${productList}" var="product">
                        <div class="col-md-3">
                            <div class="wrap-tab">
                                <a href="ProductServlet?productId=${product.id}" class="product-tab-img">
                                    <img style="width: 260px; height: 205px;" src="${product.image}"
                                         alt="">
                                </a>
                                <div class="content-product-tab">
                                    <div class="product-tab-content">
                                        <h3>${product.name}</h3>
                                    </div>
                                    <div class="product-tab-review">
                                        <span>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                        </span>
                                    </div>
                                    <div class="product-tab-price">
                                        <span>$${product.price}</span>
                                    </div>
                                    <div class="product-tab-btn">
                                        <a href="./product.html"><span>ADD TO CART</span></a>
                                        <!-- <button>ADD TO CART</button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    
</main>

<%@include file="./inc/footer.jsp" %>
</body>

</html>
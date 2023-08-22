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
                    <div class="carousel-item ">
                        <img src="https://cdn-img-v2.webbnc.net/uploadv2/web/55/5544/slide/2017/02/10/07/23/1486710787_banner2a.png" class="d-block w-100" alt="...">
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
    <!--    <div class="shopify-section">
            <div class="banner-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="single-banner mb-30">
                                <div class="banner-img img-full">
                                    <a href=""><img style="width: 370px; height: 250px;"
                                                    src="https://cdn.shopify.com/s/files/1/0040/9396/8496/files/home6-banner1.jpg?v=1635324004"
                                                    alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="single-banner mb-30">
                                <div class="banner-img img-full">
                                    <a href=""><img style="width: 370px; height: 250px;"
                                                    src="https://cdn.shopify.com/s/files/1/0040/9396/8496/files/home6-banner2.jpg?v=1635324018"
                                                    alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="single-banner mb-30">
                                <div class="banner-img img-full">
                                    <a href=""><img style="width: 370px; height: 250px;"
                                                    src="https://cdn.shopify.com/s/files/1/0040/9396/8496/files/home6-banner3.jpg?v=1635324030"
                                                    alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->

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
</div>

</main>

<%@include file="./inc/footer.jsp" %>
</body>

</html>
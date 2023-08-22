<%-- 
    Document   : product
    Created on : Apr 22, 2023, 9:13:47 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="./inc/header.jsp" %>
<div class="breadcrumbs-section">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="co-12">
                    <div class="breadcrumbs-inner">
                        <a>Home</a>
                        <i class="fa-solid fa-circle-chevron-right"></i>
                        <a>Carry Bag of Leather furniture</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="single-product-area">
    <div class="container">
        <div class="row">   
            <div class="col-md-5">
                <div class="single-product-19">
                    <div class="tab-content">
                        <div class="ProductPhoto">
                            <img style="width: 470px; height: 373px;" src="${product.image}" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="single-product-content">
                    <h1 class="single-product-name">${product.name}</h1>
                    <div class="single-product-reviews">
                        <span><i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </span>
                    </div>
                    <div class="single-product-price">
                        <div class="product-discount">
                            <span class="price" id="ComparePrice">
                                <span class="money">${product.price} $</span>
                            </span>
                        </div>
                    </div>
                    <div class="single-product-description">
                        <div class="product-description">
                            <span class="description" id="ComparePrice">
                                ${product.description}
                            </span>
                        </div>
                    </div>  
                    <div class="product-variant-option">
                        <div class="selector-wrapper">
                            <label style="font-size: 18px; padding-right: 10px;" for="productSelect-option-1">Color</label>
                            <select class="single-option-selector" id="">
                                <option value="magenta">magenta</option>
                                <option value="orange">orange</option>
                                <option value="pink">pink</option>
                                <option value="violet">violet</option>
                            </select>
                        </div>
                        <div class="product-quantity-action quantity-selector">
                            <span style="font-size: 18px; padding-right: 10px;" class="control-label">Quantity</span>
                        </div>
                        <div class="cart-plus-minus">
                            <div class="qtybutton">-</div>
                            <input type="text" value="1" class="cart-plus-minus-box">
                            <div class="qtybutton">+</div>
                        </div>
                    </div>
                    <div class="product-add-to-cart">
                        <div class="add">
                            <a href="./cart.html"><button class="add-to-cart">Add To Cart</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="shopify-section">
    <div class="single-product-review-content-tab">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title title2-border-color">
                        <h2>products detail</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="single-product-description">
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="shopify-section-product">
    <div class="product-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title title2-border-color">
                        <h2>products</h2>
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
                            <a href="ProductServlet?productId=${product.id}"
                               class="product-tab-img">
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
<%@include file="./inc/footer.jsp" %>
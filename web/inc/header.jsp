<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./public/css/style.css">
        <script src="./public/js/category.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link rel="stylesheet" href="./public/boottrap/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">
        <script src="./public/boottrap/bootstrap-5.3.0-alpha1-dist/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div id="shopify-section-header" class="shopify-section">
            <div class="header-top-area" id="header-top-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4  col-lg-4">
                            <div class="welcome-text">
                                <p>Welcome to Store!</p>
                            </div>
                        </div>
                        <div class="col-md-8  col-lg-8">
                            <div class="header-top-right-sidebar text-lg-right">
                                <ul class="header-top-menu">
                                    <c:if test="${sessionScope.user == null}">
                                        <a style=" display: inline-block;
                                           padding: 4px 18px;
                                           border-radius: 3px;
                                           color: #fff;
                                           font-weight: 500;
                                           margin: 0 10px;
                                           background-color: #43b031;" href="LoginServlet" class="nav-item nav-link">Login</a>
                                        <a style=" display: inline-block;
                                           padding: 4px 18px;
                                           border-radius: 3px;
                                           color: #fff;
                                           font-weight: 500;
                                           margin: 0 10px;
                                           background-color: #43b031;" href="RegisterServlet" class="nav-item nav-link">Register</a>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">
                                        <a style=" display: inline-block;
                                           padding: 4px 18px;
                                           border:1px solid #f42b3d;
                                           border-radius: 3px;
                                           color: #f42b3d;
                                           border-color: #f42b3d;
                                           font-weight: 500;
                                           margin: 0 10px;
                                          " href="DashBoardServlet" class="nav-item nav-link">Admin Panel</a>
                                        <a style=" display: inline-block;
                                           padding: 4px 18px;
                                           border-radius: 3px;
                                           color: #fff;
                                           font-weight: 500;
                                           margin: 0 10px;
                                           background-color: #43b031;" href="LogoutServlet" class="nav-item nav-link">Log Out</a>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-middle-area" id="header-middle-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <div class="header-logo">
                                <a href="./HomeServlet"><img
                                        src="https://cdn.shopify.com/s/files/1/0040/9396/8496/files/logo1_300x300.png?v=1613764151"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-8">
                            <div class="header-top-search-box-area">
                                <div class="search-categories">
                                    <form action="SearchServlet" method="get">
                                        <input type="text" placeholder="Search our store" name="key">
                                        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="header-contact-cart-area">
                                <di v class="block-contact-top">
                                    <i class="fa-solid fa-headphones"></i>
                                    <div class="content-contact">
                                        <span class="ct-mail">
                                            <a href="">demo@hastech.com</a>
                                        </span><br>
                                        <span class="ct-phone">(+800) 123 456 789</span>
                                    </div>
                                </di>
                                <div class="mini-cart">
                                    <a href="./cart.html">
                                        <i class="fa-solid fa-cart-shopping"></i>
                                        <div class="content-cart">
                                            <span class="cart-text">My Cart</span><br>
                                            <span class="money">$0.00</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-bottom-area" id="header-bottom-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-6">
                            <div class="main-menu category-heading">
                                <li class="product-dropdown-1">
                                    <i class="category-icon fa-solid fa-list"></i>
                                    <samp>CATEGORIES</samp>
                                    <i class="category-icon-2 fa-solid fa-chevron-down"></i>
                                    <ul class="dropdown-1">
                                        <li><a href="">adidass</a></li>
                                    </ul>
                                </li>
                            </div>
                        </div>
                        <div style="margin-left: 48px;" class="col-lg-9 col-md-6">
                            <div class="header-menu-area">
                                <ul class="main-menu">
                                    <li><a href="">HOME</a></li>
                                    <li class="product-dropdown">
                                        <a href="">PRODUCTS</a>
                                        <ul class="dropdown">
                                            <li><a href="">Simple Product</a></li>
                                            <li><a href="">Variable Product</a></li>
                                            <li><a href="">Affiliate Link product </a></li>
                                            <li><a href="">Product Preorder</a></li>
                                        </ul>
                                    </li>
                                    <li class="product-dropdown">
                                        <a href="">BLOG</a>
                                        <ul class="dropdown">
                                            <li><a href="">Blog</a></li>
                                            <li><a href="">Blog Details</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="">ABOUT US</a></li>
                                    <li><a href="">CONTACT</a></li>
                                    <li><a href="">SHOP</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Amaze Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/jquery.smartmenus.bootstrap-4.css"/>
    <link rel="stylesheet" href="css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!--start Cart Section-->
<section class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-12 table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th> </th>
                        <th></th>
                        <th>상품</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>합계</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="remove">
                            <a href="#">
                                <i class="fa fa-trash-o"></i>
                            </a>
                        </td>
                        <td>
                            <a href="#">
                                <img alt="" src="images/cart-product.png">
                            </a>
                        </td>
                        <td>
                            <a href="#">woo Single #2</a>
                        </td>
                        <td>$45.00</td>
                        <td>1</td>
                        <td>$45.00</td>
                    </tr>
                    <tr>
                        <td class="remove">
                            <a href="#">
                                <i class="fa fa-trash-o"></i>
                            </a>
                        </td>
                        <td>
                            <a href="#">
                                <img alt="" src="images/cart-product.png">
                            </a>
                        </td>
                        <td>
                            <a href="#">woo Single #2</a>
                        </td>
                        <td>$45.00</td>
                        <td>2</td>
                        <td>$90.00</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="shop-coupon">
                                        <input type="text" placeholder="Coupon code">
                                        <button class="btn btn-default btn-block grey" type="button">Apply Coupon</button>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="shop-cart-buttons pull-right">
                                        <button class="btn btn-default btn-block grey text-left" type="button">Update Cart</button>
                                        <button class="btn btn-default" type="button">Proceed to Checkout</button>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">
                <div class="dividerHeading">
                    <h4>
                        <span>May You like</span>
                    </h4>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product">
                            <div class="product-img">
                                <img class="img-fluid" src="images/shop1.png">
                            </div>
                            <div class="product-info">
                                <div class="product-title">
                                    <h3>
                                        <a href="#">male T-Shirts</a>
                                    </h3>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-empty"></i>
                                            </span>
                                </div>
                                <div class="product-prices">
                                    <p class="price-new">$45.00</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product">
                            <div class="product-img">
                                <img class="img-fluid" src="images/shop2.png">
                            </div>
                            <div class="product-info">
                                <div class="product-title">
                                    <h3>
                                        <a href="#">male T-Shirts</a>
                                    </h3>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-empty"></i>
                                            </span>
                                </div>
                                <div class="product-prices">
                                    <p class="price-new">$45.00</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="dividerHeading">
                    <h4>
                        <span>Cart Totals</span>
                    </h4>
                </div>
                <table class="table shop-cart-total">
                    <tbody>
                    <tr>
                        <th>Cart Subtotal</th>
                        <td class="text-right">$135.00</td>
                    </tr>
                    <tr>
                        <th>Shipping and Handling</th>
                        <td class="text-right">Free Shipping</td>
                    </tr>
                    <tr>
                        <th>Order Total</th>
                        <td class="text-right">$135.00</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!--end Cart Section-->

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/retina-1.1.0.min.js"></script>


<script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jflickrfeed.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/swipe.js"></script>



<script src="js/main.js"></script>



<script>
    $(window).load(function(){
        $("#menu-bar").sticky({ topSpacing: 0 });
    });
</script>
</body>
</html>
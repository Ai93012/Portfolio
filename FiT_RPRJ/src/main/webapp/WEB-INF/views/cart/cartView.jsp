<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html class="no-js" lang="en"> <!--<![endif]-->
	<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
	<!-- my css -->
	<link rel="stylesheet" href="../resources/css/style3.css">    
	
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
		<div class="container" align=center>
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
										</div>
									</div>
									<div class="col-sm-6">
										<div class="shop-cart-buttons pull-right" align=center>
											<button class="button" type="button">새로고침</button>
										  &nbsp; &nbsp; &nbsp; &nbsp;
											<button class="button" type="button">구매</button>
										</div>
									</div>
								</div>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
				<div class="col-md-7">
					<div class="dividerHeading">
						<h6>
							<span>장바구니 합계</span>
						</h6>
					</div>
					<table class="table shop-cart-total">
						<tbody>
						<tr>
							<th>장바구니 합계</th>
							<td class="text-right">$135.00</td>
						</tr>
						<tr>
							<th>택배비</th>
							<td class="text-right">Free Shipping</td>
						</tr>
						<tr>
							<th>주문 합계</th>
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
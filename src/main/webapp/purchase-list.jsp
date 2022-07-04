<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   <title>Supplier Management | Jayasadha</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/main12.css" rel="stylesheet">
	<link href="css/adminHeader.css" rel="stylesheet">
	<link href="css/userManagement.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	
	<style>.hello{background-image: url("1111.jpg")}</style>
		
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top1"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@jayasadha.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle hello"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo1.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu1 pull-right">
							<ul class="nav navbar-nav">
								<li><a href="Login.jsp"><i class="fa fa-user"></i> Account</a></li>
								<li><a href="Login.jsp"><i class="fa fa-phone"></i> Contact</a></li>								
								<li><a href="Login.jsp"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						
					</div>
					
					
					
										
					
				</div>
			</div>
		</div><!--/header-bottom-->
		
	</header><!--/header-->


	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    
    <!-- ------------------------------------------------------------------------------------------------- -->
    
    
    
    <section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar1">
						<h2>Dashboard</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
						<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											SUPPLIER MANAGEMENT
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li> <a href="new">Add Supplier</a></li>
											<li> <a href="list">View Supplier Details</a></li>

										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											PURCHASES
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="new1">Add purchase order</a></li>
											<li><a href="list1">Purchase Details</a></li>

										</ul>
										<ul>
										<li><a href="purchasereport.jsp">Purchase Report</a></li>
										<li><a href="employeereport.jsp">Employee Report</a></li>
										</ul>
									</div>
								</div>
							</div>
							
						</div><!--/category-products-->
						
						
							</div>
				</div>	
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title1 text-center">Supplier Management</h2><br>
						<h2 class="title1 text-center">Purchase Orders</h2>
					</div>	
				</div>
				
				
					
					<br><br>
					
					
					<div>
					<div class="shop-menu1 pull-right">
         
					<table class="tble-width tble-border center">
					
						 <tr>
				                <th class="tble-border data-align tble-h" colspan="2">Purchase Id</th>
				                <th class="tble-border data-align tble-h" colspan="2">Product Code</th>
				                <th class="tble-border data-align tble-h" colspan="2">Supplier</th>
				                <th class="tble-border data-align tble-h" colspan="2">Purchase date</th>
				                <th class="tble-border data-align tble-h" colspan="2">Quantity</th>
				                <th class="tble-border data-align tble-h" colspan="2">Unit Price</th>
				                <th class="tble-border data-align tble-h" colspan="2">status</th>
				                <th class="tble-border data-align tble-h" colspan="2">Total Amount</th>
				                 <th class="tble-border data-align tble-h" colspan="2">View</th>
				                  <th class="tble-border data-align tble-h" colspan="2">Cancel</th>
                
		            </tr>
		            <c:forEach var="user1" items="${listUser1}">
		                <tr>	
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.pid}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.productid}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.suppid}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.date}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.quantity}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.unitprice}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.status}" /></td>
		                    <td class="tble-border data-align tble-b" colspan="2"><c:out value="${user1.total}" /></td>
		                   
							 <td  class="tble-border data-align tble-b"  colspan="2">
		                    <a  style="color :blue" href="edit1?id=<c:out value='${user1.pid}' />">View</a>

		                    	&nbsp;&nbsp;&nbsp;&nbsp;
		                    	                    	
		                    </td>
		                    <c:choose>
		                   
                    	<c:when test="${user1.status==('Pending')}">
                    	<td >	<a class="ab" href="delete1?id=<c:out value='${user1.pid}' />">Cancel</a></td>
                    	</c:when>
                    	</c:choose>
		                    
		                    		
		                    	&nbsp;&nbsp;&nbsp;&nbsp;
		                    	                    	
		                    </td>
		                </tr>
		            </c:forEach>
										
										
					</table></div>
					</div>
				</div>			
			</div>
		
	</section>
	


    
    
    		<br><br><br><br>
		
		
    
 <!-- --------------------------------------------------------------------------------- -->
		<footer ><!--Footer-->
			<div class="footer-all">
			<div class="footer-widget">
			<div class="container">
				<div class="row">


					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Contact-US</a></li>
								<li><a href="">Inquiry</a></li>
								<li><a href="">Return and Refund</a></li>
								<li><a href="">Delivery</a></li>
								
							</ul>
						</div>
					</div>
<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quick Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Mens</a></li>
								<li><a href="">Womens</a></li>
								<li><a href="">Kids</a></li>
								<li><a href="">Shoes</a></li>
							</ul>
						</div>
					</div>
					
						<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Terms of Use</a></li>
								<li><a href="">Privacy Policy</a></li>
								<li><a href="">Returned Policy</a></li>
								<li><a href="">Billing System</a></li>
								
							</ul>
						</div>
					</div>
		<div class="col-sm-2">
						<div class="single-widget">
							<h2>About US</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Company information</a></li>
								<li><a href="">Careers</a></li>
								<li><a href="">Location</a></li>
								<li><a href="">Program</a></li>
								
							</ul>
						</div>
					</div>
					
					
					
					
				
		
			</div>
					</div>
		
		
		</div>
		
		
		
		
<!-- --------------------------------------------------------------------------------- -->		
			<footer><div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright � 2021 Jayasanda Inc. All rights reserved.</p>
					<p class="pull-right"><img src="images/shop/payment-method.png" alt="" /></p>
				</div>
			</div>
		</div>
	</div>	
		
	</footer><!--/Footer-->
</body>
</html>
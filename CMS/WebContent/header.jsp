<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jpress.SiteOption"%>
<%@page import="com.jpress.CategoryTypeFetch" %>
<% com.jpress.SiteOption option = new SiteOption(); %>
<% CategoryTypeFetch t=new CategoryTypeFetch(); %>
<!DOCTYPE html>
<html>
<head>
<title>Konstructs a Blogging Category Flat Bootstarp  Responsive Web Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Konstructs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="logo">
			
				<a href="index.jsp"><h1><%=option.bloginfo("site_url") %></h1></a>
			</div>
			<div class="pages">
				  <ul>
					<li><h3 style="color:#FFF;margin-top:10px;margin-left:50px;">Work is Worship</h3></li>
			
				</ul>
			</div>
			<div class="navigation">
				<ul>
					<li><a href="contact.html">Advertise</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a class="active" href="contact.html">Contact Us</a></li>
					
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="container">
		<div class="header-bottom">
            <div class="type">
				<h5>Category Types</h5>
			</div>
			<span class="menu"></span>
			<div class="list-nav">
				<%=t.netCategory() %>
			</div>
			<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".list-nav" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!-- script for menu -->

			<div class="clearfix"></div>
        </div>
	</div>
    
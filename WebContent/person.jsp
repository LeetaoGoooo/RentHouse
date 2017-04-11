<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Iterator,java.util.List" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person</title>
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="./js/scripts.js"></script>
<link href="./css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<!--header-->
	<div class="navigation">
			<div class="container-fluid">
				<nav class="pull">
					<ul>
						<li><a  href="houseAction!getAllTopFiveByVisit">首页</a></li>
						<li><a  href="houseAction!getAllHouse">租房</a></li>
                        <li><a  href="houseAction!getAllCom">小区</a></li>
						<li><a  href="houseAction!getAllBussinessHouse">商铺写字楼</a></li>
						<li><a  href="houseAction!getAllVillageHouse">别墅</a></li>
						<li><a  href="houseAction!getAllLuxury">豪华套房</a></li>
						<li><a  href="questionAction!getAllQuestion">问答</a></li>					</ul>
					</ul>
				</nav>			
			</div>
		</div>

<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.html">北上广</a></h1>
			</div>
		<!--//logo-->
		<div class="top-nav">
			<ul class="right-icons">
				<li><a  href="userAction!showPersonalInfo?name=${session.userinfo.name}"><i class="glyphicon glyphicon-user"> </i>${session.userinfo.name}</a></li>
				<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>
				
			</ul>
			<div class="nav-icon">
				<div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
						<a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
					</div>	
				<!---
				<a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
			--->
			</div>
		<div class="clearfix"> </div>
			<!---pop-up-box---->
			   
				<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
				<script src="./js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
					    <!----- tabs-box ---->
				<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>全部</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>小区</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>租房</span></li>
                              <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>问答</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
						  <div class="resp-tabs-container">
						  		<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>全部</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
								 	<div class="facts">
									  	<div class="login">
											<input type="text" value="请输入关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '请输入关键字';}">		
									 		<input type="submit" value="">
									 	</div>        
							        </div>
						  		</div>
							     <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>小区</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">									
										<div class="login">
											<input type="text" value="请输入关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '请输入关键字';}">		
									 		<input type="submit" value="">
									 	</div> 
							        </div>	
								 </div>	
                                 <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>租房</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">									
										<div class="login">
											<input type="text" value="请输入关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '请输入关键字';}">		
									 		<input type="submit" value="">
									 	</div> 
							        </div>	
								 </div>									
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>问答</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="facts">
										<div class="login">
											<input type="text" value="请输入关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '请输入关键字';}">		
									 		<input type="submit" value="">
									 	</div> 
							         </div>	
							    </div>
                                
					      </div>
					 </div>
					 <script src="./js/easyResponsiveTabs.js" type="text/javascript"></script>
				    	<script type="text/javascript">
						    $(document).ready(function () {
						        $('#horizontalTab').easyResponsiveTabs({
						            type: 'default', //Types: default, vertical, accordion           
						            width: 'auto', //auto or any width like 600px
						            fit: true   // 100% fit in a container
						        });
						    });
			  			 </script>	
				</div>
				</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
					
	
		</div>
		<div class="clearfix"> </div>
		</div>	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3><span>perso</span>nal</h3> 
	<!---->
	<div class="menu-right">
		 <ul class="menu">
			<li class="item1"><a href="#"> 菜单<i class="glyphicon glyphicon-menu-down"> </i> </a>
			<ul class="cute">
						<li class="subitem1"><a  href="houseAction!getAllTopFiveByVisit">首页</a></li>
						<li class="subitem2"><a  href="houseAction!getAllHouse">租房</a></li>
                        <li class="subitem1"> <a  href="houseAction!getAllCom">小区</a></li>
						<li class="subitem2"><a  href="houseAction!getAllBussinessHouse">商铺写字楼</a></li>
						<li class="subitem3"><a  href="houseAction!getAllVillageHouse">别墅</a></li>
						<li class="subitem3"><a  href="houseAction!getAllLuxury">豪华套房</a></li>
						<li class="subitem3"><a  href="questionAction!getAllQuestion">问答</a></li>
			</ul>
		</li>
		</ul>
	</div>
	<div class="clearfix"> </div>
		<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
      		
	</div>
</div>
<!--//header-->
<!--contact-->



<div class="page-header">
        <h3><a style=" color:#27DA93;" href="#">&nbsp;个人信息</a></h3>
        <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a style="color:#000;" href="#">&nbsp;个人资料</a></li>
        <li role="presentation"><a style="color:#000;" href="#">个人收藏</a></li>
        <li role="presentation"><a style="color:#000;" href="#">浏览历史</a></li>
        <li role="presentation"><a style="color:#000;" href="#">我的房源</a></li>
        <li role="presentation"><a style="color:#000;" href="#">我的问答</a></li>
        <li role="presentation"><a style="color:#000;" href="#">我的评论</a></li>
      </ul>
      </div>

<s:if test="%{#session.updateStatus}">
             		<h2>更新个人信息成功!</h2>
</s:if>         
<div class="login-right">
	<div class="container">

	<form action ="person" method="post">
		<h3>个人资料</h3>
		<div class="login-top">  
             <div class="col-loan">
                <ul class="loan-col1">
        			<li><span>帐号 </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name = "account" value="${userinfo.getAccount()}" placeholder="" required="" readonly></li>
		        </ul>       
				<ul class="loan-col1">
					<li><span>姓名</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name = "name" value="${userinfo.getName()}" placeholder="" required="" readonly></li>
				</ul>  
               <ul class="loan-col1">
					<li><span>性别</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name = "sex" value="${userinfo.getSex()}" placeholder="" required="" readonly></li>
				</ul>
    			<ul class="loan-col1">
					<li><span>手机号码</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="phone" value="${userinfo.getPhone()}" placeholder="" required="" readonly></li>
				</ul>
				<ul class="loan-col1">
                <li><span>密码 </span></li><label>:</label>
                        <li class="loan-list-top"><input type="text" name="password" value="${userinfo.getPassword()}" placeholder="" required="" readonly></li>
                </ul>
                <ul class="loan-col1">
					<li><span>邮箱</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="email" value="${userinfo.getEmail()}" placeholder="" required="" readonly></li>
				</ul>
<%--                 <ul class="loan-col1">
                <li><span>头像 </span></li><label>:</label>
                        <li class="loan-list-top"><input type="file" name ="photo" value="<%=user.getPhoto() %>" id="file_input2"/></li>
                </ul> --%>
                <br/>
				<div class="sub1">
					<center><label class="hvr-sweep-to-right"><a href="person-update.jsp"><input class="btn" value="修改"></a></label></center>
				</div>
			</div>
	</div>
	</form>
	</div>
</div>
<!--//contact-->
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="clearfix"> </div>
		</div>
	</div>
    <div class="footer">
	<div class="container">
		<div class="footer-top-at">
			<div class="col-md-3 amet-sed">
				<h4><a style=" color:#FFFFFF;" href="about.html">房产知识</a></h4>
				<ul class="nav-bottom">
					<li><a href="about.html">About Us</a></li>
					<li><a href="blog.html">For Sale By Owner Blog</a></li>
					<li><a href="mobile_app.html">Mobile</a></li>
					<li><a href="terms.html">Terms & Conditions</a></li>
					<li><a href="privacy.html">Privacy Policy</a></li>	
					<li><a href="blog.html">Blog</a></li>
					
				</ul>	
			</div>
			<div class="col-md-3 amet-sed ">
				<h4><a style=" color:#FFFFFF;" href="single.html">房产法律</a></h4>
					<ul class="nav-bottom">
						<li><a href="single.html">Real Estate Brokers</a></li>
						<li><a href="single.html">Business Development</a></li>
						<li><a href="single.html">Affiliate Programs</a></li>
						<li><a href="contact.html">Sitemap</a></li>
						<li><a href="career.html">Careers</a></li>
						<li><a href="feedback.html">Feedback</a></li>	
					</ul>	
			</div>
			<div class="col-md-3 amet-sed">
				<h4><a style=" color:#FFFFFF;" href="#">房屋风水</a></h4>
					<ul class="nav-bottom">
						<li><a href="#">Live Chat</a></li>
						<li><a href="faqs.html">Frequently Asked Questions</a></li>
						<li><a href="suggestion.html">Make a Suggestion</a></li>
					</ul>	
			</div>
			<div class="col-md-3 amet-sed ">
				<h4><a style=" color:#FFFFFF;" href="single.html">装修设计</a></h4>
				   <ul class="nav-bottom">
						<li><a href="single.html">Residential Property</a></li>
						<li><a href="single.html">Commercial Property</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="typo.html">Short Codes</a></li>	
					</ul>	
			</div>
		<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="col-md-4 footer-logo">
				<h2><a href="index.html">北上广</a></h2>
			</div>
			<div class="col-md-8 footer-class">
				<p >联系方式：15538006260&nbsp;&nbsp;&nbsp;&nbsp;邮箱：2323518508@qq.com&nbsp;&nbsp;</p><p>Copyright &copy; 2016.www.beishangguang.com All rights reserved.</p>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>


</div>
<!--//footer-->
</body>
</html>
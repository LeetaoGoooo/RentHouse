<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Community</title>
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
						<li><a  href="questionAction!getAllQuestion">问答</a></li>
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
				<s:if test="#session.userinfo.name != null">
					<li><a  href="userAction!showPersonalInfo?name=${session.userinfo.name}"><i class="glyphicon glyphicon-user"> </i>${session.userinfo.name}</a></li>
				</s:if>
				<s:else>
					<li><a  href="login.jsp"><i class="glyphicon glyphicon-user"> </i>登录</a></li>
				</s:else>
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
				    
				<link href="./css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
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
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>租房</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
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
	<h3><span>Commun</span>ity</h3> 
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
<!--blog-->
<div class="blog">
<div class="container">
   <div class="col-md-9 blog-head">
	     <div class="blog-top">
<!--	        <img src="./images/bl.jpg" class="img-responsive" alt=""/>
-->
<div class=" buying-top">	
			<div class="flexslider">
  <ul class="slides">
    <li data-thumb="./images/ss.jpg">
      <img src="./images/ss.jpg" />
    </li>
    <li data-thumb="./images/ss1.jpg">
      <img src="./images/ss1.jpg" />
    </li>
    <li data-thumb="./images/ss2.jpg">
      <img src="./images/ss2.jpg" />
    </li>
    <li data-thumb="./images/ss3.jpg">
      <img src="./images/ss3.jpg" />
    </li>
  </ul>
</div>
<!-- FlexSlider -->
  <script defer src="./js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="./css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
</div>

	         
 <h4>小区描述</h4>
           <div class="buy-sin-single">
			<div class="col-sm-5 middle-side immediate">
            				<!--<h3>房屋信息</h3>-->
                           <h4>小区信息</h4>
					     <p><span class="bath1">小区名称</span>: <span class="two">${session.ComDetails.name}</span></p>
					     <p><span class="bath1">&nbsp;城&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;市&nbsp;&nbsp;&nbsp;&nbsp;</span>: <span class="two">${session.ComDetails.city}</span></p>
					     <p><span class="bath2">&nbsp;地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址&nbsp;&nbsp;&nbsp;&nbsp;</span>: <span class="two">${session.ComDetails.address}</span></p>
					     <p><span class="bath3">&nbsp;开&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发商&nbsp;&nbsp;&nbsp;</span>:<span class="two">${session.ComDetails.developer}</span></p>
						 <p><span class="bath4">&nbsp;绿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;化率&nbsp;&nbsp;&nbsp;</span>:<span class="two">${session.ComDetails.green}%</span></p>
						 <p><span class="bath5">&nbsp;停&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;车位&nbsp;&nbsp;&nbsp;&nbsp; </span>:<span class="two">${session.ComDetail.car}</span></p>
                         <p><span class="bath6"> 交通便利指数</span>: <span class="two">${session.ComDetails.traffic}</span></p>
					     <p><span class="bath7">商业繁华指数 </span>: <span class="two">${session.ComDetails.publi}</span></p>


						 
<!--						 <p><span class="bath17">面积</span> : <span class="two">4 - 10 Years</span></p>
						 <p><span class="bath18">朝向 </span>:<span class="two"> 30-40 Lacs</span></p>-->						 
<!--						<div class="   right-side">
                        
                         <center>
                              <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
							 <a href="contact.html" class="hvr-sweep-to-right more" >&nbsp;Contact Builder</a>     </center>
					 </div>-->
					</div>
                       <div class="col-sm-5 middle-side immediate">
                       	 <h4>&nbsp;</h4>
                         <p>
                         	<span class="bath8">是否是学区房</span>: <span class="two">
                         		<s:if test="#{session.ComDetails.study == 1 }">
                         			是
                         		</s:if>
                         		<s:else>
                         			否
                         		</s:else>
                         	</span>
                         </p>
						 <p><span class="bath10">总面积</span> : <span class="two">${session.ComDetails.totalarea}</span></p>
						<%--  <p><span class="bath11">物业费</span>:<span class="two"> 30-40 Lacs</span></p>
                         <p><span class="bath12">房源数量 </span>:<span class="two"> 30-40 Lacs</span></p> --%>
                         <p><span class="bath12">联系方式 </span>:<span class="two"> 30-40 Lacs</span></p>

                         
                    <!--  <div class="   right-side">
                        <center>
                              <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
							 <a href="contact.html" class="hvr-sweep-to-right more" >&nbsp;Contact Builder</a>     </center>
					 </div>-->
                      
                       </div>
<!--					 <div class="col-sm-7 buy-sin">-->
					 	<!--<h4>Description</h4>
					 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature</p>
					 	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC </p>-->
<!--					 </div>-->
					 <div class="clearfix"> </div>
					</div>
           
	           <div class="links">
		  		  <ul class="blog-links">
		  			<li><a href="#"><i class="blog_circle">${session.AllJudge.size()}</i><span>评论数</span></a></li>
<!--		  			<li><a href="#"><i class="glyphicon glyphicon-heart"> </i><span>赞</span></a></li>-->
		  		  </ul>
		  	   </div>
		 </div> 
		 <!---->
			<div class="single-grid">
				<h5>大家讨论的有</h5>
				<s:iterator value="#session.AllJudge" var="judge">
					<div class="media">
				          <div class="media-left">
				            <a href="#">
				            	<img class="media-object" src="./images/av.png" alt="" />
				            </a>
				          </div>
				          <div class="media-body">
				            <h4 class="media-heading">${judge.getUser().getName()}</h4>
				              <p>${judge.content}</p>
				          </div>
			        </div>
				</s:iterator>
		<!---->
		<div class="leave">
			<h5>发表我的想法</h5>
			<form action="houseAction!judgeComBycomID" method="post">
			   <textarea  name = "content" placeholder="评论" required=""></textarea>
			   <label class="hvr-sweep-to-right">
	           <input type="submit" value="发表">
	           </label>
			</form>
			</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="footer-top-at">
			<div class="col-md-3 amet-sed">
				<h4><a style=" color:#5B5B5B;" href="about.html">房产知识</a></h4>
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
				<h4><a style=" color:#5B5B5B;" href="single.html">房产法律</a></h4>
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
				<h4><a style=" color:#5B5B5B;" href="#">房屋风水</a></h4>
<!--				<p>Mon-Fri, 7AM-7PM </p>
				<p>Sat-Sun, 8AM-5PM </p>
				<p>177-869-6559</p>-->
					<ul class="nav-bottom">
						<li><a href="#">Live Chat</a></li>
						<li><a href="faqs.html">Frequently Asked Questions</a></li>
						<li><a href="suggestion.html">Make a Suggestion</a></li>
					</ul>	
			</div>
			<div class="col-md-3 amet-sed ">
				<h4><a style=" color:#5B5B5B;" href="single.html">装修设计</a></h4>
				   <ul class="nav-bottom">
						<li><a href="single.html">Residential Property</a></li>
						<li><a href="single.html">Commercial Property</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="typo.html">Short Codes</a></li>	
					</ul>	
<!--					<ul class="social">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="camera"> </i></a></li>
						<li><a href="#"><i class="dribble"> </i></a></li>
					</ul>-->
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
<!--//footer-->
</body>
</html>
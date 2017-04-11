<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Iterator,java.util.List" %>
<%@ page import="com.entity.Question" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question</title>
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
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>租房</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="facts">
										<div class="login">
											<input type="text" value="请输入关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '请输入关键字';}">		
									 		<input type="submit" value="">
									 	</div> 
							         </div>	
							    </div>
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>问答</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
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
	<h3><span>Quest</span>ion</h3> 
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
		<div class="container">
		<div class="content-events">
				<h3>问答</h3>
				<div class="news">
					<div class="col-md-4 new-more">
                          <div class="event">
							<h4>常见问题</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==0">
									<h6><a href="questionAction!getPostDetailById?id=${question.id}">${question.title}</a></h6>
								</s:if>								
							</s:iterator>
						  </div>
						    <p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=0">更多了解</a>
					</div>
					<div class="col-md-4 new-more">
						<div class="event">
							<h4>装修设计</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==1">
									<h6><a href="">${question.title}</a></h6>
								</s:if>								
							</s:iterator>
						</div>
						<p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=1">更多了解</a>
					</div>
					<div class="col-md-4 new-more">
						<div class="event">
							<h4>房屋风水</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==2">
									<h6><a href="questionAction!getPostDetailById?id=${question.id}">${question.title}</a></h6>
								</s:if>								
							</s:iterator>			
						</div>
						<p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=2">更多了解</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="news">
					<div class="col-md-4 new-more">
						<div class="event">
							<h4>商业地产</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==3">
									<h6><a href="questionAction!getPostDetailById?id=${question.id}">${question.title}</a></h6>
								</s:if>								
							</s:iterator>							
						</div>
						<p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=3">更多了解</a>
					</div>
					<div class="col-md-4 new-more">
						<div class="event">
							<h4>法律法规</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==4">
									<h6><a href="questionAction!getPostDetailById?id=${question.id}">${question.title}</a></h6>
								</s:if>								
							</s:iterator>				
						</div>
						<p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=4">更多了解</a>
					</div>
					<div class="col-md-4 new-more">
						<div class="event">
							<h4>其他</h4>
							<s:iterator value="#session.QuestionList" var="question" status="st">
								<s:if test="#question.type==5">
									<h6><a href="questionAction!getPostDetailById?id=${question.id}">${question.title}</a></h6>
								</s:if>								
							</s:iterator>	
						</div>
						<p></p>
						<a class="hvr-sweep-to-right more" href="questionAction!getPostsByType?type=5">更多了解</a>
					</div>
					<div class="clearfix"> </div>
				</div>
                </form>
			</div>
		</div>
		<!---->

</div>
<!--footer-->

<div class="footer">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>rent</title>
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
			</div>
		<div class="clearfix"> </div>
			<!---pop-up-box---->
				   
				<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
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
	<h3><span>rent&nbsp</span>out</h3> 
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
<!---->
<div class="loan_single">
	<div class="container">
		<div class="loan-col">
				<s:if test="#session.RentHouseStatus == 'Success'">
					<h2>信息提交成功，请耐心等待审核果</h2>
				</s:if>
				<s:elseif test="#session.RentHouseStatus == 'Fail'">
					<h2>信息提交失败，请检查是否信息填写完整</h2>
				</s:elseif>
			<h3>出租</h3>
            <center>
			<h4> <span>你有房吗？</span> 租出去吧!!</h4></center>
		    <form action = "houseAction!rentHouse" method = "post" >
			<div class="login-top">
					<div class="col-loan">
                    <ul class="loan-col1">
					 <li><span><label  class="neccesary">* </label>城市：</span> </li>
					 <li class="loan-list-top">	
					  <select name="city" class="drop-select" required>
					    <option value="">请选择</option>
					    <option value = "北京">北京</option>
					    <option value = "上海">上海</option>
					    <option value = "杭州">杭州</option>
					    <option value = "武汉">武汉</option>
					    <option value = "郑州">郑州</option>
					    <option value = "成都">成都</option>
					    <option value = "苏州">苏州</option>
					    <option value = "西安">西安</option>
					    <option value = "重庆">重庆</option>
					    <option value = "南京">南京</option>
					    <option value = "广州">广州</option>
						<option value = "无锡">无锡</option>
						<option value = "青岛">青岛</option>
						<option value = "三亚">三亚</option>
						<option value = "厦门">厦门</option>
						<option value = "福州">福州</option>
						<option value = "台湾">台湾</option>
						<option value = "沈阳">沈阳</option>
	                    <option value = "哈尔滨">哈尔滨</option>
					    <option value = "other">其他</option>
				      </select>
					</li>
			  </ul>    
              <ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>类别:</span></li>
					<li class="loan-list-top"><select class="drop-select" name = "type">
					<option value = "" selected>请选择</option>
					<option value = "居民楼" >居民楼</option>
					<option value = "学区房">学区房</option>
					<option value = "商铺写字楼">商铺写字楼</option>
					<option value = "别墅">别墅</option>
					<option value = "豪华套房">豪华套房</option>
<!--           	    <option>其他</option> -->
					</select>
					</li>
				</ul>
	                   
	            <ul class="loan-col1">
				<li><span><label class="neccesary">*</label>小区:</span></li>
						<li class="loan-list-top"><input type="text" name="name" value=""  placeholder="" required=""></li>
			    </ul>
			
				<ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>户型:</span></li>
					<li class="loan-list-top"><select class="drop-select" name = "buju">
                    <option value = "all" selected>全部</option>
					<option value = "一室一厅">一室一厅</option>
					<option value = "两室一厅">两室一厅</option>
					<option value = "两室二厅">两室二厅</option>
                    <option value = "两室二厅">两室二厅</option>
					<option value = "三室一厅">三室一厅</option>
                    <option value = "三室一厅">三室一厅</option>
					<option value = "三室二厅">三室二厅</option>
                    <option value = "三室三厅">三室三厅</option>
                    <option value = "四室三厅">四室三厅</option>
                    </select>
					</li>
				</ul>
					   <ul class="loan-col1">
		<!--                <span style="font-weight:bold;">加粗</span>-->
							<li><span><label class="neccesary">*</label>出租方式:</span></li>
							<li class="loan-list-top">
							  <select name="renttype" class="drop-select">
							    <option value = "请选择">请选择</option>
							    <option value = "整租">整租</option>
							    <option value = "合租">合租</option>
<!-- 							    <option>不限</option> -->
						      </select>
							</li>
						</ul>
                
             <ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>房龄/年: </span></li>
					<li class="loan-list-top"><input type="text" value=" " name="age"></li>
		     </ul>
            
              <ul class="loan-col1">
					<li><span><label class="neccesary">*</label>楼层: </span></li>
					<li class="loan-list-top"><input type="text"  value=" " name="floor" placeholder="" required=""></li>
		     </ul>
            
             <ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>总楼层:</span></li>
					<li class="loan-list-top"><input type="text"  value="" name="allfloor"></li>
		     </ul>
            
			<ul class="loan-col1">
				<li><span><label class="neccesary">&nbsp;&nbsp;</label>面积/平米:</span></li>
				<li class="loan-list-top"><input type="text" value=" " name="size"></li>
			</ul>
                
              <ul class="loan-col1">
				 <li><span><label class="neccesary">&nbsp;&nbsp;</label>朝向:</span></li>
				 <li class="loan-list-top">
				   <select class="drop-select" name = "face">
					<option>请选择</option>
					<option value = "东">东</option>
					<option value = "南">南</option>
					<option value = "西">西</option>
                    <option value = "南">北</option>
					<option value = "东北">东北</option>
					<option value = "东南">东南</option>
					<option value = "西南">西南</option>
                    <option value = "西北">西北</option>
				    </select>
					</li>
				</ul>
                <ul class="loan-col1">
					<li><span><label class="neccesary">*</label>装修:</span></li>
					<li class="loan-list-top"><select class="drop-select" name = "decoration">
					<option value = "请选择">请选择</option>
					<option value = "毛胚">毛胚</option>
					<option value = "简装">简装</option>
				    <option value = "精装">精装</option>			                      
					<option value = "豪华装修">豪华装修</option>
<!--                     <option>其他</option>  -->
					</select>
					</li>
				</ul>
                   <ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>押-付:</span></li>
					<li class="loan-list-top">
					<select class="drop-select" name = "orderway">	
                    	<option value = "请选择">请选择</option>
                    	<option value = "押一付一">押一付一</option>
						<option value = "押一付二">押一付二</option>
						<option value = "押一付三">押一付三</option>
						<option value = "半年付">半年付</option>
						<option value = "年付">年付</option>
<!--                     <option>其他</option> -->
					 </select>
					</li>
				</ul>
                
                <ul class="loan-col1">
					<li><span><label class="neccesary">*</label>价格/月:</span></li>
					<li class="loan-list-top"><input type="text" value="" name="price" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li><span><label class="neccesary">*</label>手机号码:</span></li>
					<li class="loan-list-top"><input type="text" value="${session.userinfo.getPhone()}" name="phone" placeholder="" required=""></li>
				</ul>
               <ul class="loan-col1">
                     <li><span><label class="neccesary">*</label>地址:</span></li>
					 <li class="loan-list-top"><input type="text" value=" " name="address" placeholder="" required=""></li>
				</ul> 
                 <ul class="loan-col1">
					 <li><span><label class="neccesary">*</label>出租标题</span></li>
					 <li class="loan-list-top"><input type="text" value=" " name="title" placeholder="" required="" style="width:300px;"></li>
				</ul>
                <ul class="loan-col1">
					<li><span><label class="neccesary">*</label>出租要求:</span></li>
                    <li class="loan-list-top"><textarea value=" " name="ask" cols="40" rows="8" placeholder="" required="" ></textarea></li>
				</ul>
<!--                 <ul class="loan-col1"> -->
<!-- 					<li><span><label class="neccesary">*</label>图片:</span></li> -->
<!-- 			      <li class="loan-list-top"><input type="file" id="file_input" multiple="multiple" value="" placeholder="" required=""> -->
<!-- 					</li> -->
<!-- 				</ul> -->
                 <ul class="loan-col1">
					<li><span><label class="neccesary">&nbsp;&nbsp;</label>备注:</span></li>
					<li class="loan-list-top"><textarea  value=" " name="note" cols="40" rows="4" placeholder="" required=""></textarea></li>
				</ul>
				</div>
         		 <p>您提交后的房源信息，经过管理员验证之后就可以发布了，大概需要一周左右时间。请您耐心等待。</p> 
             		   <center>
							<label class="hvr-sweep-to-right"><input type="submit" value="提交" placeholder=""></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label class="hvr-sweep-to-right re-set"><input type="reset" value="清除" placeholder=""></label>
  						</center>
			</div>
			</form>
		</div>
	</div>
</div>
<!--footer-->
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
<!--//footer-->
</body>
</html>
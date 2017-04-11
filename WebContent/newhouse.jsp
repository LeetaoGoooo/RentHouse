<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Iterator,java.util.List" %>
<%@ page import="com.entity.House" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>House</title>
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
    <h3><span>New&nbsp;Ho</span>use</h3> 
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
    
    <!--price-->
    <div class="price">
    <form action="houseAction!searchAllHouse" method="post">
        <div class="price-grid">
          <div class="col-sm-2 price-top">
            <h4>城市</h4>
            <select name="city" class="in-drop">
              <option>选择城市</option>
              <option value="北京">北京</option>
              <option value="上海">上海</option>
              <option value="杭州">杭州</option>
              <option value="武汉">武汉</option>
              <option value="郑州">郑州</option>
              <option value="成都">成都</option>
              <option value="苏州">苏州</option>
              <option value="西安">西安</option>
              <option value="重庆">重庆</option>
              <option value="南京">南京</option>
              <option value="广州">广州</option>
              <option value="无锡">无锡</option>
              <option value="青岛">青岛</option>
              <option value="三亚">三亚</option>
              <option value="厦门">厦门</option>
              <option value="福州">福州</option>
              <option value="台湾">台湾</option>
              <option value="沈阳">沈阳</option>
              <option value="哈尔滨">哈尔滨</option>
              <option value="all">全部</option>
            </select>
          </div>
<!--           <div class="col-sm-3 price-top"> -->
<!--     <h4>小区</h4> -->
<!--                 <input class = "in-drop"> -->
<!--             </div> -->
            <div class="col-sm-2 price-top">
                <h4>类别</h4>
                <select name="type" class="in-drop">
                    <option>选择类别</option>
                    <option value="居民楼">居民楼</option>
                    <option value="商铺写字楼">商铺写字楼</option>
                    <option value="别墅">别墅</option>
                    <option value="豪华套房">豪华套房</option>
                    <option value="all">全部</option>
                </select>
            </div>
              <div class="col-sm-2 price-top">
                <h4>装修</h4>
                <select name="decoration" class="in-drop">
                    <option>选择装修</option>
                    <option value="毛胚">毛胚</option>
                    <option value="简装">简装</option>
                    <option value="精装">精装</option>
                    <option value="豪华装修">豪华装修</option>
                    <option value="all">全部</option>
                </select>
            </div>
            
                <div class="col-sm-2 price-top">
                <h4>出租方式</h4>
                <select  name="renttype" class="in-drop">
                    <option>请选择</option>
                    <option value="合租">合租</option>
                    <option value="整租">整租</option>
                    <option value="all">不限</option>
                </select>
            </div>         
            <div class="clearfix"> </div>
        </div>
        <!--下一行-->
        <div class="price-grid">
              <div class="col-sm-2 price-top">
                <h4>朝向</h4>
                <select name="face" class="in-drop">
                    <option>选择朝向</option>
                    <option value="东">东</option>
                    <option value="南">南</option>
                    <option value="西">西</option>
                    <option value="北">北</option>
                    <option value="东北">东北</option>
                    <option value="东南">东南</option>
                    <option value="西南">西南</option>
                    <option value="西北">西北</option>
                    <option value="all">全部</option>                    
                </select>
            </div>
              <div class="col-sm-2 price-top">
                <h4>面积</h4>
                <select name="size" class="in-drop">
                    <option>请选择面积</option>
                    <option value="25">50平米以下</option>
                    <option value="75">50-100平米</option>
                    <option value="125">100-150平米</option>
                    <option value="175">150-200平米</option>
                    <option value="200">200平米以上</option>
                </select>
            </div>
            
            <div class="col-sm-2 price-top">
                <h4>室-厅-卫</h4>
                <select name="buju" class="in-drop">
                    <option>请选择</option>
                    <option value="一室一厅">一室一厅</option>
                    <option value="两室一厅">两室一厅</option>
                    <option value="两室二厅">两室二厅</option>
                    <option value="两室二厅">两室二厅</option>
                    <option value="三室一厅">三室一厅</option>
                    <option value="三室一厅">三室一厅</option>
                    <option value="三室二厅">三室二厅</option>
                    <option value="三室三厅">三室三厅</option>
                    <option value="四室三厅">四室三厅</option>
                    <option value="all">全部</option>
                </select>
            </div>
          

             <div class="col-sm-2 price-top">
                <h4>押-付</h4>
                <select name="orderway" class="in-drop">
                    <option>请选择</option>
                    <option value="押一付一">押一付一</option>
                    <option value="押一付二">押一付二</option>
                    <option value="押一付三">押一付三</option>
                    <option value="半年付">半年付</option>
                    <option value="年付">年付</option>
                    <option value="all">全部</option>
                </select>
            </div>
            
<!--            <div class="price-grid">-->
              <div class="col-sm-2 price-top">
                <h4>价格/月</h4>
                <select name="price" class="in-drop">
                    <option>请选择...</option>
                    <option value="250">500元以下</option>
                    <option value="750">500-1000元</option>
                    <option value="1250">1000-1500元</option>
                    <option value="1750">1500-2000元</option>
                    <option value="2000">2000以上</option>
                </select>
            </div>
            <div class="clearfix"> </div>
            <br/>
                <div class="sub1" >
                    <center><label class="hvr-sweep-to-right"><input type="submit" value="查询" placeholder=""></label></center>
                </div>
            <div class="clearfix"> </div>
        </div> 
<!--    </div>-->
    </form>
    
    <!--调整位置-->
<!--<div class="dealers">-->

<div class="container">
    <div class="dealer">
        <h4>&nbsp;&nbsp;&nbsp;Find Your Home,here.</h4>
    <div class="dealer-top">
            <div class="deal-top-top">
            	<s:iterator value="#session.AllHouse" var="house">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="houseAction!getHouseDetailById?id=${house.id}">${house.title}</a></h5>
								<p>Plot Area :${house.size}m*m</p>
								<p>Price: ${house.price}元</p>
							</div>
							<div class="top-deal2">
								<a href="houseAction!getHouseDetailById?id=${house.id}" class="hvr-sweep-to-right more">More</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
            	</s:iterator>
            <div class="clearfix"> </div>
        </div>    
        <br/>
        

<div class="footer">
    <div class="container">
        <div class="footer-top-at">
            <div class="col-md-3 amet-sed">
                <h4><a style=" color:#FFFFFF;" href="about.html">常见问题</a></h4>
                <ul class="nav-bottom">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="blog.html">For Sale By Owner Blog</a></li>
                    <li><a href="mobile_app.html">Mobile</a></li>
                    
                </ul>   
            </div>
            <div class="col-md-3 amet-sed ">
                <h4><a style=" color:#FFFFFF;" href="single.html">装修设计</a></h4>
                    <ul class="nav-bottom">
                        <li><a href="single.html">购买木地板谨防猫腻，五大陷阱</a></li>
                        <li><a href="single.html">Business Development</a></li>
                        <li><a href="single.html">Affiliate Programs</a></li>   
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
                <h4><a style=" color:#FFFFFF;" href="single.html">法律法规</a></h4>
                   <ul class="nav-bottom">
                        <li><a href="single.html">Residential Property</a></li>
                        <li><a href="single.html">Commercial Property</a></li>
                        <li><a href="login.html">Login</a></li> 
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北上广房屋租赁系统</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/css.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript" src="js/laydate/laydate.js"></script>

</head>

<body>
<div class="header">
	 <div class="logo"><img  src="images/tit.png" /></div>
				<div class="header-right">
                 <i class="icon-off icon-white"></i><a id="modal-973558" href="userAction!AdminLogout" role="button" data-toggle="modal">注销</a> 
                 <i class="icon-user icon-white"></i> 	
                 	<s:if test="%{#session.admin != null}">
                 		<a href="userAction!showPersonalInfo?name=${session.admin.name}">${session.admin.name}</a>
                 	</s:if>
                 	<s:else>
                 		<a href="./login.jsp">登录</a>
                 	</s:else>
                 <!--<i class="icon-envelope icon-white"></i> <a href="#"></a>-->
                <div id="modal-container-973558" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:300px; margin-left:-150px; top:30%">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						注销系统
					</h3>
				</div>
				<div class="modal-body">
					<p>
						您确定要注销退出系统吗？
					</p>
				</div>
				<div class="modal-footer">
					 <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button> <a class="btn btn-primary" style="line-height:20px;" href="登录.html" >确定退出</a>
				</div>
			</div>
				</div>
</div>
<!-- 顶部 -->     
            
<div id="middle">
     <div class="left">
     
     <script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">
	<div class="collapsed">
		<span>用户管理</span>
     <a href="userAction!getAllUserByAdmin">用户管理</a>
	</div>
<!-- 	<div class="collapsed">
		<span>小区管理</span>
        <a href="#">发布小区</a>
        <a href="#">查询小区</a>
        <a href="#">修改小区</a>
		<a href="#">删除小区</a>
        <a href="#">小区评论</a>
	</div>
    <div class="collapsed">
		<span>房源管理</span>
        <a href="#">发布房源</a>
        <a href="#">修改房源</a>
		<a href="#">删除房源</a>
	</div>   --> 
        <div class="collapsed">
		<span>问答管理</span>
        <a href="questionAction!getAdminPostsByType?type=0">常见问题</a>
        <a href="questionAction!getAdminPostsByType?type=1">房产知识</a>
		<a href="questionAction!getAdminPostsByTyp5?type=2">房屋风水</a>
        <a href="questionAction!getAdminPostsByType?type=3">装修设计</a>
        <a href="questionAction!getAdminPostsByType?type=4">法律问题</a>
        <a href="questionAction!getAdminPostsByType?type=5">其他</a>
	</div>
    <div class="collapsed">
		<span>个人资料</span>
        <a href="#">个人资料</a>
	</div>
</div>

     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script>

     <div class="right"  id="mainFrame">
     
     <div class="right_cont">
<ul class="breadcrumb">当前位置：
  <a href="index.html">首页</a> <span class="divider">/</span>
  <a href="#">欢迎页面</a> <span class="divider">/</span>
</ul>
 	<div class="row">
				<div class="col-xs-12">
						<div class="alert alert-block alert-success">
								<i class="icon-ok green"></i>
									欢迎使用
									<strong class="green">
										北上广房屋租赁系统
									<small></small>
									</strong>
									,这里为你提供更更全面的房源信息管理.	
						 </div>
					</div><!-- /.col -->
		</div>              
 </div>     
</div>
</div>
    
<!-- 底部 -->
<div id="footer">版权所有：北上广 &copy; 2016&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">董宏宇家</a></div>
    
    

 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
}();
 
</script>
</body>
</html>

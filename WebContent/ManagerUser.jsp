<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北上广房屋租赁系统</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/css.css" />
<script type="text/javascript" src="js/jquery1.9.0.min.js"></script>
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
	<div >
		<span>用户管理</span>
<!--        <a href="h-user.html">查询用户</a>
		<a href="查询页面.html">资料修改</a>
		<a href="客户投诉.html">删除用户</a>-->
<!--		<a href="线路管理.html">发车清单</a>-->
<!--		<a href="#">到货确认</a>-->
	</div>
<%-- 	<div class="collapsed">
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
	</div>   --%> 
        <div class="collapsed">
		<span>问答管理</span>
        <a href="questionAction!getAdminPostsByType?type=0">常见问题</a>
        <a href="questionAction!getAdminPostsByType?type=1">房产知识</a>
		<a href="questionAction!getAdminPostsByTyp5?type=2">房屋风水</a>
        <a href="questionAction!getAdminPostsByType?type=3">装修设计</a>
        <a href="questionAction!getAdminPostsByType?type=4">法律问题</a>
        <a href="questionAction!getAdminPostsByType?type=5">其他</a>
	</div>
<%--     <div class="collapsed">
		<span>个人资料</span>
	</div>  --%>  
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
  <a href="h-user.html">用户管理</a> <span class="divider">/</span>
  查询用户
</ul>
   
   <div class="title_right"><strong>用户查询</strong></div>  
       <div style="width:800px; margin:auto">
    <form action="userAction!getUserInfo" method="post">   
       <table class="table table-bordered">
         <tr>
	
     <td width="7%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">帐号查询：</td>
     <td width="8%"><input name="account" type="text"/></td>
     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">姓名查询：</td>
     <td width="20%"><input name="name" type="text"  /></td>
     
     </tr>
       </table>
       <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="submit" value="查询" class="btn btn-info " style="width:80px;" /></td>
     </tr>
 </table>
 </form>
       <table class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td><strong>No</strong></td>
             <td><strong>帐号</strong></td>
             <td><strong>姓名</strong></td>
             <td><strong>性别</strong></td>
<!--             <td><strong>头像</strong></td>-->
             <td><strong>手机号码</strong></td>             <td><strong>等级</strong></td>             <td><strong>邮箱</strong></td>
             
             <td><strong> </strong></td>
           </tr>
           <s:iterator value="#session.userList" var="user">
           		<tr align="center">
           		<td>${user.id}</td>
           		<td>${user.account}</td>
           		<td>${user.name}</td>
           		<td>
           			<s:if test="user.sex == 1">
           				<td>女</td>
           			</s:if>
           			<s:else>
           				<td>男</td>
           			</s:else>
           		</td>
           		<td>${user.phone}</td>
           		<td>
           		<a id="DataGrid1_ctl03_LinkButton1" href="userAction!delUser?id=${user.account}">删除</a></td>
				</tr>        
           </s:iterator>
   <!--           <td>1</td>
             <td>20122480110</td>
             <td>董宏宇</td>
             <td>女</td>            
             <td>15538006260</td>             <td>菜鸟</td>             
             <td>2323518508@qq.com</td> -->
            
             

         </tbody>
       </table>
       
       <table  class="margin-bottom-20 table  no-border" >
     <tr>
       <td class="text-center"><input type="button" value="打印" class="btn btn-info    margin-right-20" style="width:80px;"  /><input type="button" value="数据导出" class="btn btn-info  "  style="width:80px;" /></td>
     </tr>
   </table>
   
   <div class="nav-page">
		<nav>
      <ul class="pagination">
        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
     </ul>
   </nav>
   </div>
   
   </div>
     </div>     
     </div>
    </div>
    
<!-- 底部 -->
<div id="footer">版权所有：北上广 &copy; 2016&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.mycodes.net/" target="_blank">北上广</a></div>
   
 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
laydate.skin('molv');
laydate({elem: '#Calendar2'});
}();
 
</script>

</body>
</html>

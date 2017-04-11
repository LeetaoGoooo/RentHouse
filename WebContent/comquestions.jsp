<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
                <i class="icon-off icon-white"></i> <a id="modal-973558" href="userAction!AdminLogout" role="button" data-toggle="modal">注销</a> <i class="icon-user icon-white"></i> <a href="#">${session.admin.name}</a> 
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
		<a href="userAction!getAllUserByAdmin">查询用户</a>
<!--        		<a href="查询页面.html">资料修改</a>
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
	</div> --%>
<%-- 	<div class="collapsed">
		<span>房源管理</span>
		 <a href="#">发布房源</a>
		 <a href="#">查询房源</a>
	     <a href="#">删除房源</a>
	     <a href="#">未发布的房源</a>
     </div> --%>
	<div class="collapsed">
		<span>问答管理</span>
		<a href="questionAction!getAdminPostsByType?type=0">常见问题</a>
        <a href="questionAction!getAdminPostsByType?type=1">装修设计</a>
		<a href="questionAction!getAdminPostsByType?type=2">房屋风水</a>
        <a href="questionAction!getAdminPostsByType?type=3">商业地产</a>
        <a href="questionAction!getAdminPostsByType?type=4">法律问题</a>
        <a href="questionAction!getAdminPostsByType?type=5">其他</a>
	</div>
<%--     <div class="collapsed">
		<span>个人资料</span>
	</div> --%>   
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
<ul class="breadcrumb">
  当前位置：
  <a href="index.html">首页</a> <span class="divider">/</span>
  <a href="h-user.html">问答管理</a> <span class="divider">/</span>
<s:if test="#session.QuestionType == 0">
	常见问题
</s:if>
<s:elseif test="#session.QuestionType == 1">
	装修设计
</s:elseif>
<s:elseif test="#session.QuestionType == 2">
	房屋风水
</s:elseif>
<s:elseif test="#session.QuestionType == 3">
	商业地产 
</s:elseif >
<s:elseif test="#session.QuestionType == 4">
	法律问题
</s:elseif>
<s:else>
	其他
</s:else>
  
</ul>
   
   <div class="title_right"><strong>
<s:if test="#session.QuestionType == 0">
	常见问题
</s:if>
<s:elseif test="#session.QuestionType == 1">
	房产知识
</s:elseif>
<s:elseif test="#session.QuestionType == 2">
	房屋风水
</s:elseif>
<s:elseif test="#session.QuestionType == 3">
	装修设计 
</s:elseif >
<s:elseif test="#session.QuestionType == 4">
	法律问题
</s:elseif>
<s:else>
	其他
</s:else>
   
   </strong></div>  
       <div style="width:1200px; margin:auto">
       <s:if test="#session.SearchStatus == -1">
       	<h2>关键字有误！</h2>
       </s:if>
       <form action="questionAction!getQuestionsByTitle">
       <table width="64%" class="table table-bordered">
         <tr>
	     <td width="7%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">关键字查询：</td>
    	 <td width="8%"><input name="title" type="text"/></td>
<!-- 	     <td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户查询：</td>
    	 <td width="20%"><input name="name"type="text"  /></td> -->
         </tr>
       </table>
       <table  class="margin-bottom-20 table  no-border" >
        <tr>
     	<td class="text-center"><input type="submit" value="查询" class="btn btn-info " style="width:80px;" /></td>
	    </tr>
	  </table>
	</form>
       <table width="62%" class="table table-bordered table-hover table-striped">
         <tbody>
           <tr align="center">
             <td width="5%"><strong>No</strong></td>
             <td width="8%"><strong>类型</strong></td>
             <td width="7%"><strong>用户</strong></td>
             <td width="46%"><strong>问题</strong></td>
             <td width="11%"><strong>发表时间</strong></td>
             <td width="8%"><strong> </strong></td>
             <td width="8%"><strong> </strong></td>
             </tr>
           <s:iterator value="#session.Posts" var="question">
           	<tr align="center">
             <td>${question.id}</td>
             <td>
             	<s:if test="#question.type==0">
					常见问题
				</s:if>
				<s:elseif test="#question.type==1">
					装修设计
				</s:elseif>
				<s:elseif test="#question.type==2">
					房屋风水
				</s:elseif>
				<s:elseif test="#question.type==3">
					法律法规
				</s:elseif>
				<s:else>
					其他
				</s:else>   
             </td>
             <td>${question.getUser().getName()}</td>
             <td>${question.title}</td>            
             <td>${question.publictime}</td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="questionAction!getPostDetailById?id=${question.id}">详情</a></td>
             <td><a id="DataGrid1_ctl03_LinkButton1" href="questionAction!AdminDelQuestions?id=${question.id}">删除</a></td>
             </tr>           
           </s:iterator> 
         </tbody>
       </table>
       
       <table  class="margin-bottom-20 table  no-border" >
     <tr>
       <td class="text-center">&nbsp;</td>
     </tr>
   </table>
   
   <div class="nav-page" >
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

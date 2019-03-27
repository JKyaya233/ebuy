<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>订餐管理系统</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>个人账户
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="<%=basePath%>jsp/backstage/admin/passwordupdate.jsp" target="rightFrame">修改密码</a><i></i></li>
        <li><cite></cite><a href="<%=basePath%>jsp/backstage/form.html" target="rightFrame">修改基本信息</a><i></i></li>
<!--        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>-->
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>管理员模块
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="<%=basePath%>">管理员管理</a><i></i></li>
 <!--       <li><cite></cite><a href="#">发布信息</a><i></i></li>
        <li><cite></cite><a href="#">档案列表显示</a><i></i></li>-->
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>产品模块</div>
    <ul class="menuson">
        <li><cite></cite><a href="<%=basePath%>">产品分类管理</a><i></i></li>
        <li><cite></cite><a href="<%=basePath%>">产品管理</a><i></i></li>
  <!--      <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>-->
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>客户模块</div>
    <ul class="menuson">
        <li><cite></cite><a href="<%=basePath%>">客户管理</a><i></i></li>
<!--        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>-->
    </ul>
    
    </dd>
        <dd><div class="title"><span><img src="images/leftico02.png" /></span>订单管理</div>
            <ul class="menuson">
                <li><cite></cite><a href="<%=basePath%>">所有订单</a><i></i></li>
                <!--        <li><cite></cite><a href="#">常用资料</a><i></i></li>
                        <li><cite></cite><a href="#">信息列表</a><i></i></li>
                        <li><cite></cite><a href="#">其他</a><i></i></li>-->
            </ul>

        </dd>

    </dl>
</body>
</html>

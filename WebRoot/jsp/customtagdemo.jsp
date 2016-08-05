<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="z" uri="www.zhaoyuening.cn/customtag" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>自定义tag</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>自定义标签</h1>
    <h2>out tag</h2>
    <%
    	String str = "i love you";
    	pageContext.setAttribute("str", str);
     %>
    <z:out value="HelloWorld"/><br>
    <b>rtexprvalue为true时可以使用jsp表达式：</b><br>
    <z:out value="${str}"/>
    <h2>for tag</h2>
    <z:for count="4">
    	${str}
    </z:for>
  </body>
</html>

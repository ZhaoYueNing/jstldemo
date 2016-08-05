<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>my jstl demo</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<font color="blue">
    	<h1>my jstl demo</h1> <br>  	
  	</font>
    <c:set var="i" value="10" scope="page"></c:set>
    <br/>
	<h2>if tab</h2>
    <c:if test="${ i eq 10}">
    	hello
    </c:if>
    <br><hr>
    <h2>out tab</h2>
    <c:out value="helloworld" ></c:out>
    <c:out value="i"></c:out>
    <c:out value="${i}"></c:out>
    <c:out value="${i2 }" default="default"></c:out>
    
    <hr>
    <h2>set tab</h2>
    <c:set var="a" value="2"></c:set>
    <c:set var="a" value="6"></c:set>
    <c:out value="${a }" default="没有值"/>
    
    <hr>
    <h2>remove tab</h2>
    <c:remove var="a"/>
    <c:out value="${a }" default="没有值"/>
    
    <hr>
    <h2>cache tab</h2>
    <c:catch var="e">
    	<% int i =5/0; %>
    </c:catch>
    
    <c:if test="${e!=null }">
    	<c:out value="${e }"></c:out><br>
    	<c:out value="${e.message}"></c:out>
    </c:if>
    <hr>
    <h2>choose tab</h2>
    <c:set var="salary" value="8999"></c:set>
    <c:out value="工资${salary }"></c:out>
    <c:choose>
	    <c:when test="${salary>10000 }">
	    	小资生活
	    </c:when>
	    <c:otherwise>
	    	贫困生活
	    </c:otherwise>
    </c:choose>
    
    <hr>
    <h2>import tab</h2>
    <c:import var="data" url="http://www.zhaoyuening.cn/servletdemo/jsp/shop.jsp" charEncoding="utf-8"/>
	${data}
	<hr>
	<h2>forEach & forToke</h2>
	<%  ArrayList<String> list = new ArrayList();
		list.add("hello");
		list.add("nihao");
		list.add("haha");
		pageContext.setAttribute("list", list);
	 %>
	<c:forEach  items="${list}" var="s"  varStatus="status">
		${s} 
		${status}
	</c:forEach><br>
	<c:forTokens items="a,b,c,d" delims="," var="s">
		${s }
	</c:forTokens>
	<hr>
	<h2>url tab</h2>
	<c:url var='url'  value="http://www.baidu.com"></c:url>
	<a href="${url}">链接</a>
	<c:set var="url" value="http://www.zhaoyuening.cn"></c:set>
	<a href="${url}">链接</a>	
	<%-- <c:redirect url="${url}"></c:redirect> --%>
</body>
</html>

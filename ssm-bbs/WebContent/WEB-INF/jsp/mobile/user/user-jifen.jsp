<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/inc/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>积分记录-${applicationScope.bbsinfo.name} </title>
<meta name="keywords" content="积分记录" />
<meta name="description" content="积分记录" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="${path}/public/mobile/css/style.css" type="text/css" media="all">
<script src="${path}/public/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<body class="bg" id="wrap">
<%@ include file="/WEB-INF/inc/mobiletop.jsp"%>
<div id="sb-site" class="sb_site bg">
<header class="header">
    <div class="nav">
       <a href="javascript:;" onclick="history.go(-1);"  class="z"><img src="${path}/public/mobile/images/icon_back.png" /></a>
   <span>我的积分</span>
   </div>
</header>
<div class="threadlist">
<form method="post" action="${path}/user/jifen/index.do"> </form>
<ul>
<c:forEach items="${page.list}" var="jifen">
	<li>
         <a href="javascript:;" target="_blank" > ${jifen.content}&nbsp;&nbsp;&nbsp;${jifen.createtime} </a><span class="num">
         <c:if test="${jifen.fenshu>0}">
	          +${jifen.fenshu}
          </c:if>
          <c:if test="${jifen.fenshu<0}">
	          -${jifen.fenshu}
          </c:if>
         </span>
     </li>
</c:forEach>
</ul>
<div class="page">
<jsp:include page="/WEB-INF/inc/mobilepage.jsp" flush="true"/>	
</div>
</div>
<%@ include file="/WEB-INF/inc/mobilefoot.jsp"%>
</div>
</body>
</html>


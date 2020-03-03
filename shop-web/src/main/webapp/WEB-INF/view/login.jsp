<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=path%>/webResources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/webResources/My97DatePicker/WdatePicker.js"></script>
<%-- <link href="<%=path%>/webResources/css/index3.css"  rel="stylesheet"> --%>
<link href="<%=path%>/webResources/bootstrap-4.3.1-dist/css/bootstrap.css"  rel="stylesheet">
<script type="text/javascript" src="<%=path %>/webResources/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=path %>/webResources/validate/jquery.validate.js"></script>
</head>
<style>
    *{margin: 0;padding: 0;}
    .content{
    	position:relative;
        width: 200px;
        height: 190px;
      	margin: 45px auto;
      	
    }
    .div-inline{ 
    position:relative;
    display:inline-block;
    margin-left: 25px;
    }
</style>
<body>


<!-- 导航 -->
<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">**商城</h5>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
<button type="button" class="btn btn-dark">注册</button>
  </nav>
</div>



				<div class="content">
			    		 <form:form action="login.do" class="form-inline"  method="post"  modelAttribute="user"  id="form" >
			    			<h4>Please Login：</h4>
								  <div class="input-group" style="margin-top: 10px;">
								  		<form:input path="userName"   minlength="2"  maxlength="9" cssClass="form-control" style="width:200px"  placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"  remote="/user/checkName.do" />
							    </div>
								  <div class="input-group">
							    		<form:password path="password" cssClass="form-control"  style="width:200px"  placeholder="Password" aria-label="passWord" aria-describedby="basic-addon1"/>
											<span style="margin-left: 0px;">${err }</span>
							    </div>
							    	<input type="checkbox" name="status" value="on" >自动登录
							    	<form:button class="btn btn-dark "  style="margin-left: 63px;margin-top: 30px">Login</form:button>
	  						</form:form>
	  				</div>



</body>
</html>
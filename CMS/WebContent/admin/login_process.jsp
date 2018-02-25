<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="vld" class="com.jpress.LoginValidator"></jsp:useBean>
<jsp:setProperty property="*" name="vld"/>
<c:if test="${vld.isValid()}">
<%session.setAttribute("id", vld.getLoginid()); %>
<c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${!vld.isValid()}">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

</body>
</html>
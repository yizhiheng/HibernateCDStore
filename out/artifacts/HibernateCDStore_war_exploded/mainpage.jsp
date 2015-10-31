<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jwt.hibernate.dao.UserDAO" %>
<%@ page import="com.jwt.hibernate.bean.User" %>

<% 
	String userEmail= (String)session.getAttribute("sessionId");
    UserDAO userDao = new UserDAO();
	User user = userDao.getUserDetails(userEmail);
%>
<html>
<head>
    <title></title>
</head>
<body>

<%= userEmail%>
<br>
<button onclick="window.location.href='/HibernateWebApp/editUser.jsp'">Continue</button>

</body>
</html>

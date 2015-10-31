<%@ page import="com.jwt.hibernate.dao.UserDAO" %>
<%@ page import="com.jwt.hibernate.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
    <%
        String userEmail = (String) session.getAttribute("sessionId");
		System.out.println(userEmail);
        if (userEmail == null) {
            //Session missing

        }
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserDetails(userEmail);
    %>
</head>
<body>
    <h3>Your user email is: <%=user.getEmail()%></h3>
    <h3>You can change following items</h3>
	<form action="editUser" method="POST">
		<table cellpadding="3pt">
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="userName" size="30" value="<%=user.getUserName()%>" /></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="text" name="phone" value="<%=user.getPhone()%>" size="30" /></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><input type="text" name="address" value="<%=user.getAddress()%>" size="30" /></td>
			</tr>
			
		</table>
		<p />
		<input type="submit" value="Submit" />
	</form>
</body>
</html>

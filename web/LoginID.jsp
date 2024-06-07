<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div align="center">
        <h1>Login Form</h1>
        <form action="<%=request.getContextPath()%>/LoginServlet" method="post">
            <table style="width: 100%">
                <tr>
                    <td>UserName</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" /></td>
                </tr>
            </table>
            <input type="submit" value="Submit" />
        </form>
        <%
            String error = request.getParameter("error");
            if ("invalid".equals(error)) {
        %>
            <p style="color:red;">Invalid username or password. Please try again.</p>
        <%
            }
        %>
    </div>
</body>
</html>

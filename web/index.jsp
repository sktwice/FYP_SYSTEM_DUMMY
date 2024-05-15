<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>FASH Car Rental</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: black;
            color: white;
        }

        .topnav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px;
        }

        .topnav a {
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #04AA6D;
            color: white;
        }

        .topnav h2 {
            margin: 0;
            color: white;
            text-align: left;
        }

        .content {
            text-align: center;
            margin-top: 50px;
        }

        .button {
            border-radius: 4px;
            border: none;
            background-color: #f4511e; /* Added background color */
            color: #FFFFFF;
            text-align: center;
            font-size: 20px;
            padding: 15px;
            width: 150px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
            display: inline-block;
        }

        .button.green {
            background-color: #04AA6D;
        }

        .button.green:hover {
            background-color: #03A05F;
        }

        .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button:hover span {
            padding-right: 25px;
        }

        .button:hover span:after {
            opacity: 1;
            right: 0;
        }
    </style>
</head>
<body>


<div class="topnav">
    <h2>Car Rental</h2>
    <div>
        <a href="#" class="active">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <% 
            String username = (String) request.getSession().getAttribute("username");
            if(username == null) {
        %>
        <a href="login.jsp" class="button" style="color: white;">Login</a>
        <% } else { %>
        <a href="#" style="color: white;"><%= username %></a>
        <% } %>
    </div>
</div>


<div class="content">
    <h2>Car Rental</h2>
    <p>Welcome to Car Rental. We provide high-quality car rental services.</p>
    <button class="button"><span>Book</span></button> <!-- Default button style -->
    <button class="button green"><span>About Us</span></button> <!-- Green button style -->
</div>

</body>
</html>


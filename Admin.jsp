<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Maharashtra Travels</title>
    <style>
    body{
    /* background-color:#F2F2F2; */
    }
     /* CSS styles for navbar */
    .navbar {
      background-color: #13357B; /* Background color of navbar */
      color: #fff; /* Text color */
      border-radius: 4px; 
      padding: 1rem; /* Padding around navbar items */
      display: flex; /* Use flexbox for layout */
      justify-content: space-between; /* Space items evenly along the main axis */
      align-items: center; /* Center items vertically */
    }

    .navbar .left {
      /* Styles for left side */
    }

    .navbar .right {
      /* Styles for right side */
    }
    
    .right a{
    	 color: #007bff;
         text-decoration: none;
    }

    .right a{
      background-color: #fff; /* Background color of logout button */
      color: #333; /* Text color */
      border: none; /* Remove border */
      padding: 8px 16px; /* Padding inside button */
      border-radius: 4px; /* Add border radius */
      cursor: pointer; /* Change cursor on hover */
      transition: background-color 0.3s, color 0.3s; /* Smooth transition effect */
    }

    .right a:hover {
      background-color: #ddd; /* Background color on hover */
      color: #000; /* Text color on hover */
    }
    
    
    /* Reset default table styles */
        table {
            border-collapse: collapse;
            margin:1rem auto 2rem auto;
            width: 85%;
            border-radius: 10px; /* Add border radius */
        }

        /* Style table header */
        th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
            padding: 10px;
            text-align: left;
        }

        /* Style alternate rows */
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Style table cells */
        td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        /* Hover effect */
        tr:hover {
            background-color: #f2f2f2;
        }

        /* Style h1 */
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            margin-left:6rem;
        }

</style>
</head>
<body>


<div class="navbar">
  <div class="left">Hi, Admin!</div> <!-- Adjust "Username" with the actual username -->
  <div class="right">
    <a href="./index.html">Logout</a>
  </div>
</div>
  
    <h1>Customer Table</h1>
    <table border="1">
        <tr>
           
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Password</th>
        </tr>
        <%
            // Database connection
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/tours", "admin", "admin123");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM customer1");

            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("cname") %></td>
            <td><%= rs.getString("cgmail") %></td>
            <td><%= rs.getString("cphone") %></td>
            <td><%= rs.getString("cpassword") %></td>
        </tr>
        <%
            }
            rs.close();
            stmt.close();
        %>
    </table>

    <h1>Booking Table</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Person</th>
            <th>Child</th>
            <th>Date & Time</th>
            <th>Destination</th>
            <th>Message</th>
        </tr>
        <%
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM booking1 ORDER BY bdatetime");

            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("bname") %></td>
            <td><%= rs.getString("bemail") %></td>
            <td><%= rs.getString("bperson") %></td>
            <td><%= rs.getString("bchild") %></td>
            <td><%= rs.getString("bdatetime") %></td>
            <td><%= rs.getString("bdestination") %></td>
            <td><%= rs.getString("bmessage") %></td>
        </tr>
        <%
            }
            rs.close();
            stmt.close();
        %>
    </table>

    <h1>Contact Table</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Message</th>
        </tr>
        <%
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM contact");

            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("subject") %></td>
            <td><%= rs.getString("message")%></td>
        </tr>
        <%
            }
            rs.close();
            stmt.close();
            conn.close();
       %>
    </table>
</body>
</html>


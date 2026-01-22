<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Repair - Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Select Your Vehicle</h1>
        <div class="nav">
            <a href="home.jsp">Home</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="content">
        <div class="vehicle-box">
            <img src="images/2_wheeler.png" alt="2 Wheeler">
            <h3>2 Wheeler</h3>
            <a href="book_repair.jsp?vehicle=2wheeler">Select</a>
        </div>
        <div class="vehicle-box">
            <img src="images/3_wheeler.png" alt="3 Wheeler">
            <h3>3 Wheeler</h3>
            <a href="book_repair.jsp?vehicle=3wheeler">Select</a>
        </div>
        <div class="vehicle-box">
            <img src="images/4_wheeler.png" alt="4 Wheeler">
            <h3>4 Wheeler</h3>
            <a href="book_repair.jsp?vehicle=4wheeler">Select</a>
        </div>
        <div class="vehicle-box">
            <img src="images/truck.png" alt="Truck">
            <h3>Truck</h3>
            <a href="book_repair.jsp?vehicle=truck">Select</a>
        </div>
    </div>
</body>
</html>

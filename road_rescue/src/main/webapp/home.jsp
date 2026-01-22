<%@ page session="true" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Welcome to Road Rescue</h1>
        <div class="nav">
            <a href="logout.jsp">Logout</a>
            <a href="support.jsp">Customer Support</a>
        </div>
    </div>
    <div class="content">
        <div class="service-box">
            <img src="images/repair.png" alt="Vehicle Repair">
            <h3>Vehicle Repair</h3>
            <p>Click to repair your vehicle</p>
            <a href="vehicle_repair.jsp">Select</a>
        </div>
        <div class="service-box">
            <img src="images/fuel.png" alt="Fuel Delivery">
            <h3>Fuel Delivery</h3>
            <p>Click to request fuel delivery</p>
            <a href="fuel_delivery.jsp">Select</a>
        </div>
    </div>
</body>
</html>

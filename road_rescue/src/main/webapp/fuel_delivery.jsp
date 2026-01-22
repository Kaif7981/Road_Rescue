<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fuel Delivery - Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Fuel Delivery Near You</h1>
        <div class="nav">
            <a href="home.jsp">Home</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="content">
        <div class="fuel-box">
            <img src="images/indian_oil.png" alt="Indian Oil">
            <h3>Indian Oil</h3>
            <p>Price: 107/L</p>
            <form action="book_fuel.jsp" method="post">
                <input type="hidden" name="station" value="Indian Oil">
                <label for="fuel-type">Select Fuel Type:</label>
                <select name="fuel_type" required>
                    <option value="petrol">Petrol</option>
                    <option value="diesel">Diesel</option>
                </select>
                <label for="quantity">Enter Quantity (liters):</label>
                <input type="number" name="quantity" placeholder="Quantity in liters" required>
                <input type="submit" value="Book Now">
            </form>
        </div>

        <div class="fuel-box">
            <img src="images/hp.png" alt="HP">
            <h3>HP</h3>
            <p>Price: 106/L</p>
            <form action="book_fuel.jsp" method="post">
                <input type="hidden" name="station" value="HP">
                <label for="fuel-type">Select Fuel Type:</label>
                <select name="fuel_type" required>
                    <option value="petrol">Petrol</option>
                    <option value="diesel">Diesel</option>
                </select>
                <label for="quantity">Enter Quantity (liters):</label>
                <input type="number" name="quantity" placeholder="Quantity in liters" required>
                <input type="submit" value="Book Now">
            </form>
        </div>

        <!-- Similarly, add boxes for other fuel stations (Bharath Petroleum, Reliance, Nayara, etc.) -->
    </div>
</body>
</html>
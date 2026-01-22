<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Fuel Delivery - Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Processing Fuel Delivery...</h1>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String station = request.getParameter("station");
            String fuelType = request.getParameter("fuel_type");
            String quantity = request.getParameter("quantity");
            String user = (String) session.getAttribute("user");

            Connection conn = DBConnection.getConnection();
            PreparedStatement pst = conn.prepareStatement("INSERT INTO fuel_booking (user_email, station, fuel_type, quantity) VALUES (?, ?, ?, ?)");
            pst.setString(1, user);
            pst.setString(2, station);
            pst.setString(3, fuelType);
            pst.setString(4, quantity);

            int row = pst.executeUpdate();
            if (row > 0) {
                response.sendRedirect("confirmation.jsp?type=fuel");
            } else {
                out.println("<script>alert('Failed to book fuel delivery.');</script>");
            }
        }
    %>
</body>
</html>

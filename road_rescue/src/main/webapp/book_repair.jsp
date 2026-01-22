<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Vehicle Repair - Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Book Your Vehicle Repair</h1>
        <div class="nav">
            <a href="home.jsp">Home</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="content">
        <form action="book_repair.jsp" method="post">
            <input type="hidden" name="vehicle" value="<%= request.getParameter("vehicle") %>">
            
            <label for="brand">Select Vehicle Brand:</label>
            <select name="brand" required>
                <option value="Royal Enfield">Royal Enfield</option>
                <option value="Honda">Honda</option>
                <option value="Hero">Hero</option>
                <option value="Yamaha">Yamaha</option>
                <option value="Bajaj">Bajaj</option>
                <option value="Others">Others</option>
            </select>

            <label for="model">Select Vehicle Model:</label>
            <input type="text" name="model" placeholder="Enter model name" required>

            <label for="address">Enter Your Address:</label>
            <input type="text" name="address" placeholder="Enter your address" required>

            <label for="problem">Specify Your Problem:</label>
            <input type="text" name="problem" placeholder="e.g. Flat tyre, Brake failure" required>

            <input type="submit" value="Book Repair">
        </form>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String vehicle = request.getParameter("vehicle");
            String brand = request.getParameter("brand");
            String model = request.getParameter("model");
            String address = request.getParameter("address");
            String problem = request.getParameter("problem");
            String user = (String) session.getAttribute("user");

            Connection conn = DBConnection.getConnection();
            PreparedStatement pst = conn.prepareStatement("INSERT INTO repair_booking (user_email, vehicle, brand, model, address, problem) VALUES (?, ?, ?, ?, ?, ?)");
            pst.setString(1, user);
            pst.setString(2, vehicle);
            pst.setString(3, brand);
            pst.setString(4, model);
            pst.setString(5, address);
            pst.setString(6, problem);

            int row = pst.executeUpdate();
            if (row > 0) {
                response.sendRedirect("confirmation.jsp?type=repair");
            } else {
                out.println("<script>alert('Failed to book repair service.');</script>");
            }
        }
    %>
</body>
</html>
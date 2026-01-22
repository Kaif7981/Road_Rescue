<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Account - Road Rescue</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="register-box">
        <h2>Create Account</h2>
        <form action="register.jsp" method="post">
            <input type="text" name="first_name" placeholder="First Name" required>
            <input type="text" name="last_name" placeholder="Last Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="phone" placeholder="Phone Number" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            <input type="submit" class="btn" value="Create Account">
        </form>
    </div>

    <%
        try {
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String firstName = request.getParameter("first_name");
                String lastName = request.getParameter("last_name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String password = request.getParameter("password");
                String confirmPassword = request.getParameter("confirm_password");

                if (!password.equals(confirmPassword)) {
                    out.println("<script>alert('Passwords do not match!');</script>");
                } else {
                    Connection conn = DBConnection.getConnection();
                    if (conn != null) {
                        PreparedStatement pst = conn.prepareStatement(
                            "INSERT INTO customers (first_name, last_name, email, phone, address, password) VALUES (?, ?, ?, ?, ?, ?)"
                        );
                        pst.setString(1, firstName);
                        pst.setString(2, lastName);
                        pst.setString(3, email);
                        pst.setString(4, phone);
                        pst.setString(5, address);
                        pst.setString(6, password);

                        int row = pst.executeUpdate();
                        if (row > 0) {
                            response.sendRedirect("login.jsp");
                        } else {
                            out.println("<script>alert('Failed to register!');</script>");
                        }
                    } else {
                        out.println("<script>alert('Failed to connect to the database!');</script>");
                    }
                }
            }
        } catch (SQLException e) {
            out.println("<h3>SQL Error:</h3>");
            out.println("<p>" + e.getMessage() + "</p>");
        } catch (Exception e) {
            out.println("<h3>General Error:</h3>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    %>
</body>
</html>

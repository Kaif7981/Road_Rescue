<%@ page import="java.sql.*" %>
<%@ page import="com.roadrescue.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Road Rescue: On-Demand Road Services</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form action="login.jsp" method="post">
            <div class="textbox">
                <input type="text" placeholder="Email" name="email" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <input type="submit" class="btn" value="Login">
        </form>
        <p>Don't have an account? <a href="register.jsp">Create Account</a></p>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Connection conn = DBConnection.getConnection();
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM customers WHERE email=? AND password=?");
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                session.setAttribute("user", email);
                response.sendRedirect("home.jsp");
            } else {
                out.println("<script>alert('Invalid email or password');</script>");
            }
        }
    %>
</body>
</html>

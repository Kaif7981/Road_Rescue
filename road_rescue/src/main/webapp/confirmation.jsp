<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="header">
        <h1>Thank You for Booking</h1>
        <div class="nav">
            <a href="home.jsp">Home</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="content">
        <h2>Your <%= request.getParameter("type") %> booking was successful!</h2>
        <p>You will receive further updates via email.</p>
    </div>
</body>
</html>

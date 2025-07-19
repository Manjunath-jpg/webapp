<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to MANJUNATH My Web App</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h2>Welcome to Manjunath Java Web Application</h2>
        </div>
        <div class="card-body">
            <p class="lead">Today's date and time: <strong><%= new Date() %></strong></p>
            <hr>
            
            <!-- User Form -->
            <form method="get" class="mt-4">
                <div class="mb-3">
                    <label for="name" class="form-label">Enter your name:</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Enter your email:</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" required>
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form>

            <%-- Displaying submitted values --%>
            <%
                String name = request.getParameter("name");
                String email = request.getParameter("email");

                if (name != null && email != null) {
            %>
                <div class="alert alert-info mt-4">
                    <h5>Hello, <%= name %>!</h5>
                    <p>Your email is: <%= email %></p>
                </div>
            <%
                }
            %>
        </div>
        <div class="card-footer text-muted">
            &copy; 2025 My Company | Powered by JSP + Maven
        </div>
    </div>
</div>
</body>
</html>


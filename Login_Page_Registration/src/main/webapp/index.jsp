<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 450px;
        }

        h1 {
            font-size: 2.2rem;
            color: #007bff;
            margin-bottom: 30px;
        }

        button {
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 8px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            margin-bottom: 15px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .footer {
            font-size: 0.9rem;
            color: #6c757d;
            margin-top: 20px;
        }

        .footer a {
            color: #007bff;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Our Platform</h1>
        <button onclick="window.location.href='signup.jsp'">Create New Account</button>
        <button onclick="window.location.href='Login.jsp'">Login</button>
        <!-- <div class="footer">
            Already have an account? <a href="Login.jsp">Login here</a>.
        </div> -->
    </div>
</body>
</html>

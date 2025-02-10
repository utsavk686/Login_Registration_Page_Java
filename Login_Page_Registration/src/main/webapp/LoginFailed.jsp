<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
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

        .error-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        h1 {
            font-size: 2.2rem;
            color: #dc3545;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2rem;
            color: #495057;
            margin-bottom: 30px;
        }

        .icon {
            font-size: 50px;
            color: #dc3545;
            margin-bottom: 20px;
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
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-footer {
            margin-top: 20px;
            font-size: 0.9rem;
            color: #6c757d;
        }

        .form-footer a {
            color: #007bff;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="icon">❌</div>
        <h1>Login Failed</h1>
        <p>Sorry, the email or password you entered is incorrect.</p>
        <button onclick="window.location.href='Login.jsp'">Try Again</button>
        <div class="form-footer">
            Don't have an account? <a href="signup.jsp">Register here</a>.
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 15px;
            text-align: center;
        }

        .form-container {
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            font-size: 1.6rem;
            color: #495057;
            margin-bottom: 15px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            font-size: 1rem;
            color: #495057;
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .submit-btn {
            background-color: #007bff;
            color: white;
            border: none;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        .form-footer {
            text-align: center;
            margin-top: 10px;
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
    <div class="form-container">
        <h1>Login</h1>
        <h2>Enter Your Details</h2>
        <form action="Login" method="post">
            <div class="form-group">
                <label for="email">Email ID:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="submit-btn">Submit</button>
        </form>
        <div class="form-footer">
            Don't have an account? <a href="signup.jsp">Register here</a>.
        </div>
    </div>
</body>
</html>

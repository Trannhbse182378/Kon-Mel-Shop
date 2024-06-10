<%-- 
    Document   : login
    Created on : Jan 22, 2024, 8:13:25 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel ="icon" href ="image/tab.jpg" type ="image/x-icon">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
        <title>Login & Register</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background-image: url(image/shop.webp); /* Replace 'background.jpg' with your image path */
                background-size: cover;
                background-position: center;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                backdrop-filter: blur(5px);
            }

            .form-container {
                background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity as needed */
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }

            .form-container h2 {
                text-align: center;
            }

            .form-container form {
                display: flex;
                flex-direction: column;
            }

            .form-container input {
                margin-bottom: 20px;
                padding: 10px;
                border: none; /* Bỏ viền */
                border-radius: 5px;
                font-size: 16px;
                outline: none; /* Bỏ đường viền xung quanh khi focus */
                box-shadow: none; /* Bỏ hiệu ứng bóng đổ */
            }

            .form-container button {
                padding: 10px;
                border: none;
                border-radius: 5px;
                background-color: #007bff;
                color: #fff;
                font-size: 16px;
                cursor: pointer;
            }

            .form-container button:hover {
                background-color: #0056b3;
            }

            .form-container .login-link {
                text-align: center;
                margin-top: 10px;
            }

            /* Define keyframes for the animation */
            @keyframes slideIn {
                from {
                    transform: translateY(-100%);
                }
                to {
                    transform: translateY(0);
                }
            }

            /* Apply animation to the error message box */
            .error-message {
                position: fixed;
                top: 0;
                left: 38.8%;
                transform: translateX(-50%);
                background-color: #ffcccc;
                padding: 10px 20px;
                border-radius: 5px;
                animation: slideIn 0.5s ease-out forwards;
                /* Adjust z-index as needed */
                z-index: 9999;
            }

            .login-link a {
                color: #5e90c4;
            }

            .login-link a:hover {
                color: #44709d; 
            }

            h2{
                color: #5e90c4;
            }

            #login-button{
                background-color: #5e90c4;
            }

            #login-button:hover{
                background-color: #44709d;
            }

        </style>

    </head>
    <body>
        <div class="form-container">
            <h2>Welcome to Kon Mel</h2>
            <form action="MainController" method="POST"> <!-- Replace "#" with your form action -->
                <input type="email" name="username" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <input id="login-button" type="submit" name="action" value="Login" style="padding: 10px; 
                       border: none; border-radius: 5px; color: #fff; font-size: 16px; cursor: pointer;">

            </form>
            <div class="login-link">
                <p style="color: #564846;">Don't have an account? <a href="login.jsp">Register here</a></p>
            </div>
            <form action="RegisterServlet" method="POST" id="register" style="display: none;">
                <input type="email" name="new_email" placeholder="New Email" required>
                <input type="password" name="new_password" placeholder="New Password" required>
                <input type="text" name="new_name" placeholder="Full Name" required>
                <input id="login-button" type="submit" name="action" value="Register" style="padding: 10px; 
                       border: none; border-radius: 5px; color: #fff; font-size: 16px; cursor: pointer;">

            </form>

        </div>


    </body>
    <script>
        // JavaScript to toggle between login and registration forms
        const loginLink = document.querySelector('.login-link a');
        const registerForm = document.getElementById('register');

        loginLink.addEventListener('click', function (event) {
            event.preventDefault();
            registerForm.style.display = 'block';
        });
    </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        var tmp = '${requestScope.invalid_credential}';
        if (${requestScope.invalid_credential != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.invalid_credential}',
                icon: "error",
                button: "Ok"
            });
        }
        if (${requestScope.invalid_password != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.invalid_password}',
                icon: "error",
                button: "Ok"
            });
        }
    </script>
    <script>
        var tmp = '${requestScope.Error_id}';
        if (${requestScope.Error_id != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.Error_id}',
                icon: "error",
                button: "Ok"
            });
        }
        if (${requestScope.Error_password != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.Error_password}',
                icon: "error",
                button: "Ok"
            });
        }
    </script>

    <script>
        // Get the error message passed from LoginServlet
        var errorMessage = "<%= request.getAttribute("errorMessage")%>";
        // Check if there is a non-null and non-empty error message
        if (errorMessage && errorMessage.trim() !== "" && errorMessage !== "null") {
            // Create a div for the error message
            var errorDiv = document.createElement("div");
            errorDiv.classList.add("error-message");
            // Create a text node with the error message
            var errorMessageNode = document.createTextNode(errorMessage);
            // Append the text node to the div
            errorDiv.appendChild(errorMessageNode);
            // Append the div to the body of the document
            document.body.appendChild(errorDiv);
        }
    </script>
    <script>
        var registerSuccessMessage = "<%= request.getAttribute("registerSuccess")%>";
        // Check if there is a non-null and non-empty success message
        if (registerSuccessMessage && registerSuccessMessage.trim() !== "" && registerSuccessMessage !== "null") {
            // Display success message using SweetAlert
            swal({
                title: "Success!",
                text: registerSuccessMessage,
                icon: "success",
                button: "Ok"
            });
        }
    </script>

    <% if (request.getAttribute("registerError") != null) {%>
    <script>
        swal({
            title: "Oops!",
            text: '<%= request.getAttribute("registerError")%>',
            icon: "error",
            button: "Ok"
        });
    </script>
    <% }%>
    <% if (request.getAttribute("registerSuccess") != null) {%>
    <script>
        swal({
            title: "Success!",
            text: '<%= request.getAttribute("registerSuccess")%>',
            icon: "success",
            button: "Ok"
        });
    </script>
    <% }%>
</html>

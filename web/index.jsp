<%-- 
    Document   : index
    Created on : 27 jun 2024, 0:03:11
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="assets/images/pagina.png" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #87CEEB; 
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="bg-white p-5 rounded-5 text-secondary shadow" style="width: 25rem">
        <div class="d-flex justify-content-center">
            <img src="assets/images/usuario.jpeg" alt="login-icon" style="height: 7rem"/>
        </div>
        
        <div action="login" method="post" > 
            <div class="text-center fs-1 fw-bold">Login</div>
        <div class="input-group mt-4">
            <div class="input-group-text bg-primary">
                <img src="assets/images/username-icon.svg" alt="username-icon" style="height: 1rem"/>
            </div>
            <input class="form-control bg-light" type="text" name="username" id="username" placeholder="Username"/>
        </div>
        <div class="input-group mt-1">
            <div class="input-group-text bg-primary">
                <img src="assets/images/password-icon.svg" alt="password-icon" style="height: 1rem"/>
            </div>
            <input class="form-control bg-light" name="clave" type="password" id="password" placeholder="Password"/>
        </div>
        <div class="d-flex justify-content-around mt-1">
            <div class="d-flex align-items-center gap-1">
                <input class="form-check-input" type="checkbox"/>
                <div class="pt-1 text-primary" style="font-size: 0.9rem">Remember me</div>
            </div>
            <div class="pt-1">
                <a href="#" class="text-decoration-none text-primary fw-semibold fst-italic" style="font-size: 0.9rem">Forgot your password?</a>
            </div>
        </div>
        <div class="d-grid gap-2 mt-4">
            <button id="loginBtn" class="btn bg-primary text-white" onclick="login()">Login</button>
        </div>
        <div class="d-flex gap-1 justify-content-center mt-1">
            <div>Don't have an account?</div>
            <a href="#" class="text-decoration-none text-indigo fw-semibold">Register</a>
        </div>
        <p id="error" class="error text-center text-danger mt-3"></p>
        </div>
        
        
    </div>

    <script>
        const validUsername = "Juan";
        const validPassword = "Enrique"; 
        let attemptCount = 0;
        const maxAttempts = 3;

        function login() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const errorElement = document.getElementById('error');

            if (attemptCount >= maxAttempts) {
                errorElement.textContent = "Su cuenta ha sido bloqueada, comunicarse con el administrador.";
                return;
            }

            if (username === validUsername && password === validPassword) {
                alert('Bienvenido!');
                
            } else {
                attemptCount++;
                if (attemptCount >= maxAttempts) {
                    errorElement.textContent = "Su cuenta ha sido bloqueada, comunicarse con el administrador.";
                    document.getElementById('loginBtn').disabled = true;
                } else {
                    errorElement.textContent = "Usuario o contraseña incorrectos. Intento " + attemptCount + " de " + maxAttempts;
                }
            }
        }
    </script>
</body>
</html>
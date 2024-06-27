<%-- 
    Document   : home
    Created on : 27 jun 2024, 11:06:13
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Empresarial</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }
        .card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 20px;
            padding: 20px;
            width: 300px;
            text-align: center;
        }
        .card h3 {
            margin-top: 0;
        }
        .card p {
            font-size: 1.5em;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Dashboard Empresarial</h1>
    </div>
    <div class="container">
        <div class="card">
            <h3>Ingresos</h3>
            <p>$50,000</p>
        </div>
        <div class="card">
            <h3>Gastos</h3>
            <p>$20,000</p>
        </div>
        <div class="card">
            <h3>Clientes</h3>
            <p>150</p>
        </div>
        <div class="card">
            <h3>Ventas</h3>
            <p>300</p>
        </div>
    </div>
</body>
</html>
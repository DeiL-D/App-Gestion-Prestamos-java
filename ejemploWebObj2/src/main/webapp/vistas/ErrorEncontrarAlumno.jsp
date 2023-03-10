<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error 404</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }
        h1 {
            font-size: 48px;
            font-weight: bold;
            text-align: center;
            margin-top: 100px;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 50px;
            font-size: 24px;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            width: 300px;
            margin: auto;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Error 404</h1>
    <p>Lo siento, el alumno que busca no está disponible. Intente mirar la lista de alumnos.</p>
    <a href="redirectTOtodosLosAlumnos">Ver Alumnos</a>
</body>
</html>
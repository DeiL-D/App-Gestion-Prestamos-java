<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Usuario No Encontrado</title>
<style>
    body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
    }

    h1 {
        text-align: center;
        font-size: 36px;
        margin-top: 50px;
    }

    .btn {
        display: block;
        width: 200px;
        margin: 50px auto 0;
        padding: 15px 30px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .btn:hover {
        background-color: #3e8e41;
    }
</style>
</head>
<body>
<%@ include file="/index.jsp" %>
<h1>Error EL Usuario No Se Ha Encontrado Verifica El Usuario Que Desea Eliminar.</h1>
<a href="redirectTOtodosLosAlumnos"><button class="btn">Lista De Alumnos</button></a>
</body>
</html>
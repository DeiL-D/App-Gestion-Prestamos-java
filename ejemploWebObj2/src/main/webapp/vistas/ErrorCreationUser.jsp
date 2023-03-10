<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
.container {
  max-width: 800px;
  margin: 0 auto;
  text-align: center;
  padding-top: 100px;
}

h1 {
  font-size: 32px;
  margin-bottom: 50px;
}

.btn {
  display: inline-block;
  background-color: #428bca;
  color: #fff;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
  font-size: 16px;
  margin-top: 20px;
  transition: all 0.3s ease-in-out;
}

.btn:hover {
  background-color: #3071a9;
}
</style>
<body>
<%@ include file="/index.jsp" %>
<div class="container">
  <h1>No hay ningún portátil disponible para asignar, por favor cree uno nuevo para continuar.</h1>
  <a href="redirectTOAddPortatil"><button class="btn">Crear Portátil</button></a>
</div>
</body>
</html>
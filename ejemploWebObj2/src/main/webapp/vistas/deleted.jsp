<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminación de alumno</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
  margin: 0;
  padding: 0;
}

h1 {
  font-size: 2.5rem;
  text-align: center;
  color: #333;
  margin-top: 50px;
}

@media screen and (max-width: 768px) {
  h1 {
    font-size: 2rem;
  }
}

a {
  display: block;
  width: 150px;
  height: 50px;
  margin: 50px auto;
  text-align: center;
  line-height: 50px;
  background-color: #1c88c7;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
  border-radius: 5px;
  transition: all 0.3s ease-in-out;
}

a:hover {
  background-color: #0c457a;
}
</style>
</head>
<body>
<%@ include file="/index.jsp" %>
 <h1>El alumno seleccionado ha sido eliminado con éxito</h1>
 <a href="redirectTODelAlumno">Volver</a>
</body>
</html>
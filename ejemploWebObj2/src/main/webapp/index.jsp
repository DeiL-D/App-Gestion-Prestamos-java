<%@ include file="/vistas/cabecera.jsp" %>
<html>
<head>
  <link rel="stylesheet" href="./css/index.css">
</head>
<style>
/* Estilos para el body */
body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
}

/* Estilos para el header */
header {
  background-color: #333;
  color: #fff;
  padding: 10px;
}

/* Estilos para el nav */
nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

/* Estilos para los enlaces */
nav a {
  color: #fff;
  text-decoration: none;
  font-weight: bold;
  padding: 10px;
}

nav a:hover {
  background-color: #fff;
  color: #333;
}
</style>
<header>
<nav>
  
    <a href="redirectTOtodosLosAlumnos">Ver Alumnos</a>
    <a href="redirectTOtodosLosPortatiles">Ver Portatiles</a>
    <a href="redirectTOAddAlumno">Nuevo Alumno</a>
    <a href="redirectTOAddPortatil">Nuevo Portatil</a>
    <a href="redirectTOalumnosOfPortatil">Alumno por portatil</a>
    <a href="redirectTOportatilesOfAlumnos">Portatil por alumno</a>
    <a href="redirectTODelAlumno">Eliminar Alumno</a>
  
</nav>
</header>
</html>
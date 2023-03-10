<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/index.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de alumnos</title>
</head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
}

h1 {
  font-size: 36px;
  color: #444;
  text-align: center;
  margin: 50px 0;
}

table {
  border-collapse: collapse;
  width: 80%;
  margin: 0 auto;
  box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
}

thead {
  background-color: #444;
  color: #fff;
}

th, td {
  padding: 10px;
  text-align: left;
}

th {
  font-weight: bold;
}

tbody tr:nth-child(odd) {
  background-color: #f2f2f2;
}

tbody tr:hover {
  background-color: #ddd;
}
</style>
<body>

<h1>Lista de alumnos</h1>
<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Teléfono</th>
            <th>Portátil asignado</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="alumno" items="${listaDTO}">
            <tr>
                <td>${alumno.idAlumno}</td>
                <td>${alumno.nombre}</td>
                <td>${alumno.telefono}</td>
                <td>${alumno.portatil.marca} ${alumno.portatil.modelo}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
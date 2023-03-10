<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de alumnos</title>
</head>
<body>
<h1>Lista de alumnos</h1>
<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Tel�fono</th>
            <th>Port�til asignado</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="alumno" items="${listaAlumnos}">
            <tr>
                <td>${alumno.idAlumno}</td>
                <td>${alumno.nombre}</td>
                <td>${alumno.telefono}</td>
                <td>${alumno.portatilAsignado.marca} ${alumno.portatilAsignado.modelo}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
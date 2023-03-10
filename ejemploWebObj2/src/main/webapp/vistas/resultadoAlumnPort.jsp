<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>alumnos</title>

</head>
<style>
/* Estilos generales */
body {
  font-family: Arial, sans-serif;
  font-size: 16px;
  line-height: 1.4;
  color: #333;
  background-color: #f7f7f7;
}

/* Estilos para la tabla */
table {
  border-collapse: collapse;
  margin: 20px auto;
  width: 100%;
  max-width: 800px;
  background-color: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

th, td {
  padding: 10px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #007bff;
  color: #fff;
}

/* Estilos para los botones */
.button {
  display: inline-block;
  border: none;
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.button:hover {
  background-color: #0056b3;
}

/* Estilos para los campos de formulario */
.form-group {
  margin-bottom: 20px;
}

.form-label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

.form-control {
  display: block;
  width: 100%;
  padding: 10px;
  font-size: 16px;
  line-height: 1.4;
  border-radius: 5px;
  border: 1px solid #ccc;
}

.form-control:focus {
  border-color: #007bff;
  outline: none;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>
<body>

<%@ include file="/index.jsp" %>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id del alumno</th>
      <th scope="col">Nombre del alumno</th>
      <th scope="col">Telefono del alumno</th>
      <th scope="col">IdPortatil</th>
      <th scope="col">Marca</th>
      <th scope="col">Modelo</th>
    </tr>
  </thead>
  <tbody>
       <tr>
       	   <td><c:out value="${miModelo.idAlumno}"/></td>
       	   <td><c:out value="${miModelo.nombre}"/></td>
       	   <td><c:out value="${miModelo.telefono}"/></td>
           <td><c:out value="${miModelo.idPortatil}"/></td>
           <td><c:out value="${miModelo.marca}"/></td>
           <td><c:out value="${miModelo.modelo}"/></td>
       </tr>
  </tbody>
</table>
</body>
</html>
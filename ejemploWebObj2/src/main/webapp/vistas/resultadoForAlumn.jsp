<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>Portatiles</title>
</head>
<style>
body {
  font-family: 'Helvetica Neue', sans-serif;
  background-color: #f7f7f7;
  padding: 20px;
}

h1 {
  font-size: 28px;
  font-weight: bold;
  margin-bottom: 20px;
}

table {
  border-collapse: collapse;
  width: 100%;
  max-width: 800px;
  margin: 0 auto;
  background-color: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

th, td {
  text-align: left;
  padding: 12px;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
  text-transform: uppercase;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f5f5f5;
}

@media only screen and (max-width: 768px) {
  table {
    font-size: 14px;
  }
  th, td {
    padding: 8px;
  }
  h1 {
    font-size: 24px;
  }
}
</style>
<body>
<%@ include file="/index.jsp" %>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id del alumno</th>
      <th scope="col">IdPortatil</th>
      <th scope="col">Marca</th>
      <th scope="col">Modelo</th>
    </tr>
  </thead>
  <tbody>
       <tr>
       	   <td><c:out value="${miModelo.idAlumno}"/></td>
           <td><c:out value="${miModelo.idPortatil}"/></td>
           <td><c:out value="${miModelo.marca}"/></td>
           <td><c:out value="${miModelo.modelo}"/></td>
       </tr>
  </tbody>
</table>
</body>
</html>
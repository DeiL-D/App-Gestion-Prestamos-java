<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Borrar Alumno</title>

</head>
<style>
form {
  max-width: 600px;
  margin: 0 auto;
  text-align: center;
  font-size: 1.5rem;
  padding: 2rem;
  border: 2px solid #ccc;
  border-radius: 10px;
}

h1 {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 1.5rem;
}

label {
  display: block;
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

input {
  display: block;
  width: 100%;
  padding: 0.5rem;
  font-size: 1.2rem;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 1rem;
}

button {
  display: inline-block;
  padding: 0.5rem 1rem;
  font-size: 1.2rem;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background-color: #0069d9;
}
</style>
<body>
<%@ include file="/index.jsp" %>
<form method="post" action="DelAlumno">
      <div>
          <br/>
          <br/>
          <div class="form-group row">
              <div style="text-align: center; font-size: 1cm;">Borrar alumno</div>
          </div>
          <br/>
          <br/>
          <div class="form-group row">
              <div class="col-form-label">Id del alumno</div>
          </div>
          <div class="form-group row">
              <div class="col-sm-4">
                  <input type="number" class="form-control" name="idAlumno" placeholder="Introduce el id del alumno, ejemplo: 1" required>
              </div>
          </div>
          <br/>
          <br/>
          <div class="form-group row">
               <div class="col-sm-4">
                   <button type="submit" class="button btn btn-primary">Eliminar Usuario</button>
               </div>
          </div>
      </div>
</form>
</body>
</html>
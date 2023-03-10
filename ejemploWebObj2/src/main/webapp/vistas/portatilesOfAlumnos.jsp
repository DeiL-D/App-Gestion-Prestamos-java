<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="UTF-8">
<title>Portatiles</title>

</head>
<style>
  body {
    background-color: #f8f9fa;
  }

  form {
    margin: 0 auto;
    max-width: 500px;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  }

  .form-group label {
    font-size: 16px;
    font-weight: bold;
  }

  .form-control:focus {
    border-color: #ffc107;
    box-shadow: none;
  }

  button[type="submit"] {
    background-color: #ffc107;
    border: none;
    font-weight: bold;
    transition: all 0.2s ease-in-out;
  }

  button[type="submit"]:hover {
    background-color: #ffa000;
    cursor: pointer;
  }

  .fa-search {
    margin-right: 5px;
  }

  @media screen and (max-width: 576px) {
    form {
      max-width: 100%;
      padding: 10px;
    }
  }
</style>
<body>
<%@ include file="/index.jsp" %>
<form method="post" action="portatilesOfAlumnos">
      <div>
          <br/>
          <br/>
          <div class="form-group row">
              <div style="text-align: center; font-size: 1cm;">Buscar portatil asignado</div>
          </div>
          <br/>
          <br/>
          <div class="form-group row">
              <div class="col-form-label">Id del alumno</div>
          </div>
          <div class="form-group row">
              <div class="col-sm-4">
                  <input type="number" class="form-control" name="alumnPortatil" placeholder="Introduce el id del alumno, ejem: 2" required>
              </div>
          </div>
          <br/>
          <br/>
          <div class="form-group row">
               <div class="col-sm-4">
                   <button type="submit" class="button btn btn-primary">Buscar</button>
               </div>
          </div>
      </div>
</form>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
<meta charset="UTF-8">
<title>Portatiles</title>

</head>
<style>
body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
}

form {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  background-color: #fff;
}

h1 {
  text-align: center;
  font-size: 2em;
  margin-top: 20px;
}

.form-group {
  margin-bottom: 10px;
}

.col-form-label {
  font-size: 1.2em;
  font-weight: bold;
}

.form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button[type="submit"] {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  font-weight: bold;
  line-height: 1.42857143;
  text-align: center;
  color: #fff;
  background-color: #007bff;
  border: 1px solid #007bff;
  border-radius: 4px;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #0069d9;
  border-color: #0062cc;
}
</style>
<body>
<%@ include file="/index.jsp" %>
<form method="post" action="alumnosOfPortatil">
      <div>
          <br/>
          <br/>
          <div class="form-group row">
              <div style="text-align: center; font-size: 1cm;">Buscar alumno</div>
          </div>
          <br/>
          <br/>
          <div class="form-group row">
              <div class="col-form-label">Id del portatil</div>
          </div>
          <div class="form-group row">
              <div class="col-sm-4">
                  <input type="number" class="form-control" name="alumnPortatil" placeholder="Introduce el id del portatil, ejemp: 2" required>
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
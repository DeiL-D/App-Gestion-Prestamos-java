<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Alumno</title>

</head>
<style>
body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
}

.form-group {
  margin-bottom: 1rem;
}

.form-control {
  display: block;
  width: 100%;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.form-control:focus {
  border-color: #80bdff;
  outline: 0;
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.col-form-label {
  padding-top: calc(0.375rem + 1px);
  padding-bottom: calc(0.375rem + 1px);
  margin-bottom: 0;
  font-size: 1.25rem;
  font-weight: 500;
  line-height: 1.5;
  color: #495057;
}

.button {
  display: inline-block;
  font-weight: 400;
  color: #212529;
  text-align: center;
  vertical-align: middle;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-color: #f8f9fa;
  border: 1px solid #f8f9fa;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.button:hover {
  color: #fff;
  background-color: #007bff;
  border-color: #007bff;
}
</style>
<body>
<%@ include file="/index.jsp" %>
<form method="post" action="AddAlumno">
	<div>        
		<br/>
		
		<div class="form-group row">
			<div class="col-form-label"></div>
			<div class="col-form-label" style="text-align: center; font-size: 1cm;">Alta de alumno</div>
		</div>

		<br/>
		<div class="form-group row">
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-form-label">Id del alumno</div>
			</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="idAlumno" placeholder="3" required>
				</div>           
			</div>
		</div>
		<div class="form-group row">
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-form-label">Nombre</div>
			</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="nombre" placeholder="Rodrigo" required>
				</div>           
			</div>
		</div>
		<div class="form-group row">
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-form-label">Telefono</div>
			</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="telefono" placeholder="644728832" required>
				</div>           
			</div>
		</div> 
		
		
		          			                  
        <div class="form-group row">
        <label class="col-form-label"></label>
			<div class="col-sm-4">
				<button type="submit" class="button btn btn-primary">Añadir</button>                    
			</div>
		</div>  
	</div>
</form>
</body>
</html>
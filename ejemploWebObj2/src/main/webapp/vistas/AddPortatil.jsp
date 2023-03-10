<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Portatil</title>
</head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
}

form {
  margin: 20px auto;
  max-width: 500px;
  padding: 20px;
  border: 1px solid #ddd;
  background-color: #fff;
  box-shadow: 0px 3px 3px rgba(0,0,0,0.1);
}

h1 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 20px;
}

/* Estilos de los campos de formulario */

label {
  display: block;
  font-size: 1.2rem;
  margin-bottom: 5px;
}

input[type="text"] {
  display: block;
  width: 100%;
  padding: 10px;
  font-size: 1.2rem;
  border: 1px solid #ddd;
  border-radius: 3px;
  margin-bottom: 20px;
}

button {
  display: inline-block;
  background-color: #007bff;
  color: #fff;
  border: none;
  padding: 10px 20px;
  font-size: 1.2rem;
  border-radius: 3px;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}
</style>
<body>
<%@ include file="/index.jsp" %>
<form method="post" action="AddPortatil">
	<div>        
		<br/>
		<br/>
		
		<div class="form-group row">
			<div class="col-form-label"></div>
			<div class="col-form-label" style="text-align: center; font-size: 1cm;">Alta de alumno</div>
		</div>
		
		<br/>
		<br/>
		
		<div class="form-group row">
			<div class="col-form-label"></div>
			<div class="col-form-label">Marca de portatil</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="marca" placeholder="Xiaomi" required>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-form-label">Modelo de portatil</div>
			</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="modelo" placeholder="mi 7" required>
				</div>           
			</div>
		</div>            			
                  
		<br/>
		<br/>	
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
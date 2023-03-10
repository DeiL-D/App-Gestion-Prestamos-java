<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Alumno</title>
</head>
<body>
<form method="post" action="nuevoAlumno">
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
				<div class="col-form-label">Nombre del alumno</div>
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
				<div class="col-form-label">Telefono del alumno</div>
			</div>
		
			<div class="form-group row">
				<div class="col-form-label"></div>
				<div class="col-sm-4">
					<input class="form-control" name="telefono" placeholder="654067834" required>
				</div>           
			</div>
		</div> 
		
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
        <div class="form-group row">
        <label class="col-form-label"></label>
			<div class="col-sm-4">
				<button type="submit" class="button btn btn-primary">A�adir</button>                    
			</div>
		</div>  
	</div>
</form>
</body>
</html>
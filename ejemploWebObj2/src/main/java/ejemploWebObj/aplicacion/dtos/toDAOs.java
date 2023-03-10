package ejemploWebObj.aplicacion.dtos;

import ejemploWebObj.aplicacion.dao.Alumno;
import ejemploWebObj.aplicacion.dao.Portatil;

public class toDAOs implements toDAOService {

	public Alumno AlumnoToDAO(AlumnoDto alumnoDto) {
		
		Alumno alumno = new Alumno();
		alumno.setIdAlumno(alumnoDto.getIdAlumno());
		alumno.setNombre(alumnoDto.getNombre());
		alumno.setTelefono(alumnoDto.getTelefono());
		alumno.setPortatil(alumnoDto.getPortatil());
		
		return alumno;
	}
	public Portatil PortatilToDAO(PortatilDto portatilDto) {
		
		Portatil portatil = new Portatil();
		portatil.setIdPortatil(portatilDto.getIdPortatil());
		portatil.setMarca(portatilDto.getMarca());
		portatil.setModelo(portatilDto.getModelo());

		
		return portatil;
	}
	
	
}
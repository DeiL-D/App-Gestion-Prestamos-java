package ejemploWebObj.aplicacion.dtos;

import ejemploWebObj.aplicacion.dao.Alumno;
import ejemploWebObj.aplicacion.dao.Portatil;

public class toDTOs {

	public AlumnoDto AlumnoToDTO(Alumno Alumno) {
		AlumnoDto alumno = new AlumnoDto();
		alumno.setIdAlumno(Alumno.getIdAlumno());
		alumno.setNombre(Alumno.getNombre());
		alumno.setTelefono(Alumno.getTelefono());
		alumno.setPortatil(Alumno.getPortatil());
		
		return alumno;
	}
	
	public PortatilDto PortatilToDTO(Portatil portatil) {
		PortatilDto PortatilDto = new PortatilDto();
		PortatilDto.setIdPortatil(portatil.getIdPortatil());
		PortatilDto.setMarca(portatil.getMarca());
		PortatilDto.setModelo(portatil.getModelo());
		
		return PortatilDto;
	}
}

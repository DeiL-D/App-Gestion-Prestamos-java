package ejemploWebObj.aplicacion.dtos;

import ejemploWebObj.aplicacion.dao.Alumno;
import ejemploWebObj.aplicacion.dao.Portatil;

public interface toDTOService {

	public AlumnoDto AlumnoToDTO(Alumno Alumno);
	
	public PortatilDto PortatilToDTO(Portatil Portatil);
	
}

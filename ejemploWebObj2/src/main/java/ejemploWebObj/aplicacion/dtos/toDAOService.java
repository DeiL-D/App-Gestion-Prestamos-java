package ejemploWebObj.aplicacion.dtos;

import ejemploWebObj.aplicacion.dao.Alumno;
import ejemploWebObj.aplicacion.dao.Portatil;

public interface toDAOService {

	public Alumno AlumnoToDAO(AlumnoDto alumnoDto);
		
	public Portatil PortatilToDAO(PortatilDto portatilDto);
}

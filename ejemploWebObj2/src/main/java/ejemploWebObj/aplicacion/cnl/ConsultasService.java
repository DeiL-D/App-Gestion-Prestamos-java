package ejemploWebObj.aplicacion.cnl;

import java.util.List;
import java.util.Optional;

import ejemploWebObj.aplicacion.dao.*;

public interface ConsultasService {
	
	public int insertPortatil(Portatil portatil);
	public void insertAlumno(Alumno alumnoDAO);
	public List<Portatil> selectAllPortatiles();
	public Portatil selectPortatil(int idPortatil);
	public Alumno selectAlumno(int idAlumno);
	public List<Alumno> selectAllAlumnos();
	public void delAlumnoById(int idAlumno);
	public List<Portatil> comparaAlumnosPortatils();
	Portatil selectPortatilEnd(int idPortatil);
	
}

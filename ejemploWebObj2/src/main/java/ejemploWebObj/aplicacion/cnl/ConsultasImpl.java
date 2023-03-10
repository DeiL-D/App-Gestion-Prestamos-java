package ejemploWebObj.aplicacion.cnl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ejemploWebObj.aplicacion.dao.*;

@Service
public class ConsultasImpl implements ConsultasService{

	@Autowired
	private AlumnoRepository psi1;
	
	@Autowired 
	private PortatilRepository psi2;
	
	
    
    @Override
    public int insertPortatil(Portatil portatilDAO) {
    	try {
            psi2.save(portatilDAO);
            return portatilDAO.getIdPortatil();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }

    }
    
    @Override
    public void insertAlumno(Alumno alumnoDAO) {
        try {
            psi1.save(alumnoDAO);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Portatil> comparaAlumnosPortatils() {
        try {
            List<Alumno> listaAlumnos = (List<Alumno>) psi1.findAll();
            List<Portatil> listaPortatil = (List<Portatil>) psi2.findAll();
            List<Integer> listaIdPortatilAsignados = new ArrayList<>();
            List<Portatil> listaPortatilSinAsignar = new ArrayList<>();

            // Obtener los ID de los portátiles asignados a algún alumno
            for (Alumno alumno : listaAlumnos) {
                listaIdPortatilAsignados.add(alumno.getPortatil().getIdPortatil());
            }

            // Filtrar los portátiles que no están asignados a ningún alumno
            for (Portatil portatil : listaPortatil) {
                if (!listaIdPortatilAsignados.contains(portatil.getIdPortatil())) {
                    listaPortatilSinAsignar.add(portatil);
                }
            }

            return listaPortatilSinAsignar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    @Override
    public Portatil selectPortatil(int idPortatil) {
    	try {
            Optional<Alumno> alumno = psi1.findById(idPortatil);
                return alumno.get().getPortatil();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        
        }
    }
    @Override
    public Portatil selectPortatilEnd(int idPortatil) {
    	try {
            Optional<Portatil> portatil = psi2.findById(idPortatil);
              
             Portatil portatil2 = new Portatil();
             portatil2.setIdPortatil(portatil.get().getIdPortatil());
             portatil2.setMarca(portatil.get().getMarca());
             portatil2.setModelo(portatil.get().getModelo());
            return portatil2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        
        }
    }
    
    @Override
    public void delAlumnoById(int idAlumno) {
    	
    	psi1.deleteById(idAlumno);
    	System.out.println("[INFORMACION]: Entrando en el metodo eliminaAlumno en ControladorAlumnos");
    }
    
    @Override
    public Alumno selectAlumno(int idAlumno) {
    	try {
            Optional<Alumno> alumno = psi1.findById(idAlumno);
            Alumno alumno2 = new Alumno();
            	alumno2.setNombre(alumno.get().getNombre());
            	alumno2.setIdAlumno(alumno.get().getIdAlumno());
            	alumno2.setTelefono(alumno.get().getTelefono());
            	alumno2.setPortatil(alumno.get().getPortatil());

                return alumno2;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        
        }
    }
    
    @Override
    public List<Alumno> selectAllAlumnos() {
        List<Alumno> listaAlumnos= (List<Alumno>) psi1.findAll();
        return listaAlumnos;
    }
    @Override
    public List<Portatil> selectAllPortatiles() {
        List<Portatil> listaPortatil = (List<Portatil>) psi2.findAll();
        if (listaPortatil == null) {
           System.out.println("Error la lista es nula");
        }
        for (Portatil portatil : listaPortatil) {
            System.out.println(portatil.toString());
        }
        return listaPortatil;
    }

	

}
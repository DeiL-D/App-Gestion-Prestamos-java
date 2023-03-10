package ejemploWebObj.web.controladores;

import ejemploWebObj.aplicacion.dao.*;
import ejemploWebObj.aplicacion.dtos.*;
import ejemploWebObj.aplicacion.cnl.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AlumnoController {

	@Autowired
	ConsultasImpl consulta;
	Random random = new Random();
	
	//Creamos una lista donde guardaremos los alumnos
	List<Alumno> listAlumnos= new ArrayList<Alumno>();
	List<Portatil> listPortatil = new ArrayList<Portatil>();
	List<Portatil> listaPortatilSinAsingnar = new ArrayList<Portatil>();
	//Se crea tanto un toDAO como un toDTO para su futura utilizacion
	toDAOs toDAO = new toDAOs();
	toDTOs toDTO = new toDTOs();
	
	protected final Log logger = LogFactory.getLog(getClass());
	Map<String, Object> miModelo = new HashMap<String,Object>();
	Map<String, Object> miModelo2 = new HashMap<String,Object>();
	
	@RequestMapping(value ="/redirectTOAddAlumno")
	public ModelAndView gestionSolicitud() {
		try {
		System.out.println("[INFORMACION]: Entrando en el metodo nuevoAlumno en el Controlador de Alumnos");
		return new ModelAndView("AddAlumno");
		}catch (Exception e) {
			System.out.println(e);
			return new ModelAndView();
		}
	}
	
	@PostMapping("/AddAlumno")
	public ModelAndView procesarConsulta(@RequestParam int idAlumno, @RequestParam String nombre, @RequestParam String telefono) {
		
	    // Se crea el ModelAndView
	    ModelAndView miModelo = new ModelAndView("../index");
	    listaPortatilSinAsingnar = consulta.comparaAlumnosPortatils();
	    System.out.println("idAlumno: " + idAlumno);
	    System.out.println("nombre: " + nombre);
	    System.out.println("telefono: " + telefono);

	    // Se crean los DTOs
	    AlumnoDto alumnDTO = new AlumnoDto();
	    
	    alumnDTO.setIdAlumno(idAlumno);
	    alumnDTO.setNombre(nombre);
	    alumnDTO.setTelefono(telefono);
	 // Asignamos el ID del portátil al alumno pero primero controlamos si hay portatiles disponibles
	    if(listaPortatilSinAsingnar == null || listaPortatilSinAsingnar.size() == 0)
	    {
	    	 return new ModelAndView("ErrorCreationUser");
	    }
	    else {
	    	int posicionAleatoria = random.nextInt(listaPortatilSinAsingnar.size());
		    Portatil portatil = listaPortatilSinAsingnar.get(posicionAleatoria);
	    alumnDTO.getPortatil().setIdPortatil(portatil.getIdPortatil());
	    alumnDTO.getPortatil().setMarca(portatil.getMarca());
	    alumnDTO.getPortatil().setModelo(portatil.getModelo());
	   
	    // Insertamos el alumno
	    consulta.insertAlumno(toDAO.AlumnoToDAO(alumnDTO));
	    }

	    // Devolvemos el ModelAndView
	    return miModelo;
	}
    
    @RequestMapping(value ="/redirectTOalumnosOfPortatil")
	public ModelAndView gestionQuery() {
    	try {
		System.out.println("[INFORMACION]: Entrando en el metodo alumnosPorPortatil en ControladorAlumnos");
		return new ModelAndView("alumnosOfPortatil");
		}catch (Exception e) {
			System.out.println(e);
			return new ModelAndView();
		}
	}
    @PostMapping("/alumnosOfPortatil")
    public ModelAndView alumnosPorPortatil(@RequestParam int alumnPortatil) {
        try {
            System.out.println("[INFORMACION]: Se muestra el alumno asignado al id del portatil concreto");
            Portatil portatil = consulta.selectPortatil(alumnPortatil);
            
            // Se guarda el objeto portatil en la lista de portátiles
            listPortatil.add(portatil);
            
            // Se guarda la lista de alumnos
            listAlumnos = consulta.selectAllAlumnos();
            
            Alumno alumnoGet = null;
            
            // Se recorre la lista de alumnos para encontrar el que tiene asignado el portátil
            for (Alumno alumno : listAlumnos) {
                if (alumno.getPortatil().getIdPortatil() == (portatil.getIdPortatil())) {
                	alumnoGet = alumno;
                    break;
                }
            }
            
            if (alumnoGet == null) {
                System.out.println("[ERROR]: No se encontró ningún alumno asignado al portátil buscado");
                return new ModelAndView("ErrorEcontrarPortatil");
            }
            
            miModelo.put("idAlumno", alumnoGet.getIdAlumno());
            miModelo.put("nombre", alumnoGet.getNombre());
            miModelo.put("telefono", alumnoGet.getTelefono());
            miModelo.put("idPortatil", portatil.getIdPortatil());
            miModelo.put("marca", portatil.getMarca());
            miModelo.put("modelo", portatil.getModelo());
            
            return new ModelAndView("resultadoAlumnPort", "miModelo", miModelo);
        } catch (Exception e) {
            System.out.println("[ERROR]: El portatil que busca no existe o no esta asignado");
            return new ModelAndView("ErrorEcontrarPortatil");
        }
        
    }
    
    //todosLosAlumnos
    @RequestMapping(value ="/redirectTOtodosLosAlumnos")
    public ModelAndView SelectAllAlumns() {
    listAlumnos = consulta.selectAllAlumnos();
    List<AlumnoDto> listaDTO = new ArrayList<AlumnoDto>();
    AlumnoDto alm = new AlumnoDto();

    // Recorremos la Lista DTO creada y la llenamos
    for (Alumno Alumno : listAlumnos) {
        alm = toDTO.AlumnoToDTO(Alumno);
        listaDTO.add(alm);
    }
    // Devolvemos el array y la vista en el model and view
    return new ModelAndView("todosLosAlumnos", "listaDTO", listaDTO);
    }
  
    @RequestMapping(value ="/redirectTODelAlumno")
	public ModelAndView DelAlumno() {
    	try {
		System.out.println("[INFORMACION]: Entrando en el metodo eliminaAlumno en ControladorAlumnos");
		return new ModelAndView("DelAlumno");
		}catch (Exception e) {
			System.out.println(e);
			return new ModelAndView();
		}
	}
    @PostMapping("/DelAlumno")
    public ModelAndView DelAlumno(@RequestParam int idAlumno) {
        try {
            consulta.delAlumnoById(idAlumno);
            return new ModelAndView("deleted");
        } catch (Exception e) {
            System.out.println("[ERROR]: " + e.getMessage());
            return new ModelAndView("ErrorEliminarUser");
        }
    }
}

package ejemploWebObj.web.controladores;

import ejemploWebObj.aplicacion.dao.*;
import ejemploWebObj.aplicacion.dtos.*;
import ejemploWebObj.aplicacion.cnl.*;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class portatilController {

	@Autowired
	ConsultasImpl consulta;
	
	//Creamos una lista donde guardaremos los portatiles
	List<Portatil> listPortatil = new ArrayList<Portatil>();
	List<Alumno> listAlumno = new ArrayList<Alumno>();
	
	//Se crea tanto un toDAO como un toDTO para su futura utilizacion
	toDAOs toDAO = new toDAOs();
	toDTOs toDTO = new toDTOs();
	
	protected final Log logger = LogFactory.getLog(getClass());
	Map<String, Object> miModelo = new HashMap<String,Object>();
	 @RequestMapping(value ="/redirectTOtodosLosPortatiles")
	    public ModelAndView SelectAllAlumns() {
		 listPortatil = consulta.selectAllPortatiles();
	    List<PortatilDto> listaDTO = new ArrayList<PortatilDto>();
	    PortatilDto alm = new PortatilDto();
	    for (Portatil portatil : listPortatil) {
	        System.out.println(portatil.toString());
	    }
	    // Recorremos la Lista DTO creada y la llenamos
	    for (Portatil portatil : listPortatil) {
	        alm = toDTO.PortatilToDTO(portatil);
	        listaDTO.add(alm);
	    }
	    for (PortatilDto portatil : listaDTO) {
	        System.out.println(portatil.toString());
	    }
	    // Devolvemos el array y la vista en el model and view
	    return new ModelAndView("todosLosPortatiles", "listaDTO", listaDTO);
	    }
	  
	@RequestMapping(value ="/redirectTOAddPortatil")
	public ModelAndView gestionSolicitud() {
		try {
		System.out.println("[INFORMACION]: Entrando en el metodo nuevoPortatil en ControladorPortatiles");
		return new ModelAndView("AddPortatil");
		}catch (Exception e) {
			System.out.println(e);
			return new ModelAndView();
		}
	}
	
	
    @PostMapping("/AddPortatil")
    public ModelAndView AddPortatil( @RequestParam String marca, @RequestParam String modelo) {
    	try {
    	//Se crea el ModelAndView;
    	ModelAndView miModelo = new ModelAndView("../index");
    	
    	//Se crea un DTO de PortatilAsignado
    	PortatilDto portatilDTO = new PortatilDto();
    	portatilDTO.setMarca(marca);
    	portatilDTO.setModelo(modelo);
    	
        //Insertamos los datos en base de datos
        consulta.insertPortatil(toDAO.PortatilToDAO(portatilDTO));
       
	   
        //Devolvemos el ModelAndView
        return miModelo;
	    }catch (Exception e) {
			System.out.println(e);
			return new ModelAndView();
		}
    }
    
    
    @RequestMapping(value="/redirectTOportatilesOfAlumnos")
	public ModelAndView gestionQuery() {
		try {
		System.out.println("[INFORMACION]: Entrando en el metodo portatilesOfAlumnos");
		return new ModelAndView("portatilesOfAlumnos");
		}catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("ErrorEncontrarAlumno");
		}
	}
    
    
    @PostMapping("/portatilesOfAlumnos")
    public ModelAndView portatilesPorAlumnos(@RequestParam int alumnPortatil) {
        try {
        	 Alumno alumno = consulta.selectAlumno(alumnPortatil);
             
             // Se guarda el objeto portatil en la lista de portátiles
        	 listAlumno.add(alumno);
             
             // Se guarda la lista de alumnos
             listPortatil = consulta.selectAllPortatiles();
             
             Portatil portatilGet = null;
             
             // Se recorre la lista de Portatiles para encontrar el que tiene asignado el portátil
             for (Portatil portatile : listPortatil) {
                 if (portatile.getIdPortatil() == (alumno.getPortatil().getIdPortatil())) {
                 	portatilGet = portatile;
                     break;
                 }
             }
            if (alumno.getPortatil() != null) {
            	
                
            } else {
                System.out.println("[ERROR]: El alumno no tiene un portátil asignado.");
                return new ModelAndView("ErrorEcontrarPortatil");
            }
            System.out.println("[INFORMACION]: Portatil de un alumno seleccionado por id correcto");
            System.out.println(portatilGet.toString());
            miModelo.put("idAlumno", alumno.getIdAlumno());
            miModelo.put("idPortatil", portatilGet.getIdPortatil());
            miModelo.put("marca", portatilGet.getMarca());
            miModelo.put("modelo", portatilGet.getModelo());

            return new ModelAndView("resultadoForAlumn", "miModelo", miModelo );
        } catch (Exception e) {
            System.out.println("[ERROR]: El portatil que busca no existe o no esta asignado");
            return new ModelAndView("ErrorEcontrarPortatil");
        }
    }
}

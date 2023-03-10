package ejemploWebObj.aplicacion.dtos;


import ejemploWebObj.aplicacion.dao.*;

public class AlumnoDto {

	//ATRIBUTOS
	private int idAlumno;
	
	private String nombre;

	private String telefono;
	
	private Portatil portatil;
    
    //GETTERS & SETTERS

	public int getIdAlumno() {
		return idAlumno;
	}

	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Portatil getPortatil() {
		return portatil;
	}

	public void setPortatil(Portatil portatil) {
		this.portatil = portatil;
	}

    //CONSTRUCTORES
	public AlumnoDto(int idAlumno, String nombre, String telefono, Portatil portatil) {
		super();
		this.idAlumno = idAlumno;
		this.nombre = nombre;
		this.telefono = telefono;
		this.portatil = portatil;
	}

	public AlumnoDto() {
        this.portatil = new Portatil();
    }

	@Override
	public String toString() {
		return "AlumnoDto [idAlumno=" + idAlumno + ", nombre=" + nombre + ", telefono=" + telefono
				+ ", Portatil=" + portatil + "]";
	}
    
	
    
}

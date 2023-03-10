package ejemploWebObj.aplicacion.dao;
import javax.persistence.*;
@Entity
@Table(name="dlk_tch_alumnos",schema="dlk_gest_alumportatiles")
public class Alumno {
	

			//ATRIBUTOS
			@Id
			@GeneratedValue(strategy = GenerationType.IDENTITY)
			@Column(name="idAlumno")
			private int idAlumno;
			
			@Column(name="nombre")
			private String nombre;
			
			@Column(name="telefono")
			private String telefono;
			
			@OneToOne
		    @JoinColumn(name = "idPortatil")
		    private Portatil portatil;
			
			//GETTERS & SETTERS
			public int getIdAlumno() {
				return idAlumno;
			}

			public void setPortatil(Portatil portatil) {
				this.portatil = portatil;
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
			    return this.portatil;
			}

			
			@Override
			public String toString() {
				return "Alumno [idAlumno=" + idAlumno + ", nombre=" + nombre + ", telefono=" + telefono + ", portatil=" + portatil +"]";
			}

			
			
			
	}



package test.springexample.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
public class Etudiant implements Serializable{
	
	

		@Id
		@GeneratedValue
		@Column(name="ID")
	private Long id;
	
	
		@NotEmpty
		@Column(name="NOM",length=50)
		@Size(min=2,max=70,message="invalid 2->70")
	private String nom;
	
		@DateTimeFormat(pattern="yyyy-MM-dd") // sinon Bad request : error = 400 : probleme de format
		@Column(name="DATENAISSANCE")
		//@NotEmpty
	private Date dateNaissance;
	
		@Email
		@Column(name="EMAIL",length=50)
		@NotEmpty
	private String email;
	
		@Column(name="PHOTO",length=50)
		//@NotEmpty
	private String photo;
	
		
	//Stupid JPA needs Constructor, getters, setters .. -_-
	
	
	
	//pour JPA et pour moi aussi
	public Etudiant() {
		super();
	}

	//pour moi
	public Etudiant(String nom, Date dateNaissance, String email, String photo) {
		super();
		this.nom = nom;
		this.dateNaissance = dateNaissance;
		this.email = email;
		this.photo = photo;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public Date getDateNaissance() {
		return dateNaissance;
	}


	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	@Override
	public String toString() {
		return "Etudiant [id=" + id + ", nom=" + nom + ", dateNaissance=" + dateNaissance + ", email=" + email
				+ ", photo=" + photo + "]";
	}
	
	
	

}

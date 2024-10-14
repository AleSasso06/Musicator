package it.generationitaly.musicator.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "utente")
public class Utente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "username", nullable = false, length = 90)
	private String username;

	@Column(name = "password", nullable = false, length = 90)
	private String password;

	@Column(name = "nome", nullable = false, length = 90)
	private String nome;

	@Column(name = "cognome", nullable = false, length = 90)
	private String cognome;

	@Column(name = "email", nullable = false, length = 90)
	private String email;

	@Column(name = "foto", nullable = false, length = 4000)
	private String foto;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_creazione")
	private Date dataCreazione = new Date();

	// @OneToMany(mappedBy = "utente")
	// private List<Playlist> playlist = new ArrayList<Playlist>();

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(Date dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	@Override
	public String toString() {
		return "Utente [id=" + id + ", username=" + username + ", nome=" + nome + ", cognome=" + cognome + ", email="
				+ email + ", foto=" + foto + ", dataCreazione=" + dataCreazione + "]";
	}

}

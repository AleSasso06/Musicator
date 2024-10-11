package it.generationitaly.musicator.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/*
CREATE TABLE artista (
    id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(90) NOT NULL,
    pseudonimo VARCHAR(90) NOT NULL,
    data_nascita DATE NOT NULL,
    nazionalita VARCHAR(45) NOT NULL,
    biografia VARCHAR(4000) NOT NULL,
    foto VARCHAR(4000) NOT NULL,
    PRIMARY KEY (id)
);
*/
@Entity
@Table(name="artista")
public class Artista {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;
	
	@Column(name = "nome", nullable = false, length = 90)
	private String nome;
	
	@Column(name = "pseudonimo", nullable = false, length = 90)
	private String pseudonimo;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "data_nascita", nullable = false)
	private Date dataNascita;
	
	@Column(name = "nazionalità", nullable = false, length = 45)
	private String nazionalita;
	
	@Column(name = "biografia", nullable = false, length = 4000)
	private String biografia;
	
	@Column(name = "foto", nullable = false, length = 4000)
	private String foto;

	@OneToMany(mappedBy = "album")
	private List<Album> album = new ArrayList<Album>();
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPseudonimo() {
		return pseudonimo;
	}

	public void setPseudonimo(String pseudonimo) {
		this.pseudonimo = pseudonimo;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public String getNazionalita() {
		return nazionalita;
	}

	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	
	
	
}

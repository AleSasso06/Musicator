package it.generationitaly.musicator.entity;

import java.sql.Time;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/*
CREATE TABLE album (
    id BIGINT AUTO_INCREMENT NOT NULL,
    titolo VARCHAR(200) NOT NULL,
    descrizione VARCHAR(4000) NOT NULL,
    durata INT NOT NULL,
    data_uscita DATE NOT NULL,
    foto VARCHAR(4000) NOT NULL,
    artista_id BIGINT NOT NULL,
    genere_id BIGINT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (id),
    FOREIGN KEY (genere_id)
        REFERENCES genere (id),
    PRIMARY KEY (id)
); 
*/
@Entity
@Table(name = "album")
public class Album {
	
	// album N - artista 1
	// album N - genere 1
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private long id;
	
	@Column(name = "titolo", nullable = false, length = 200)
	private String titolo;
	
	@Column(name = "descrizione", nullable = false, length = 4000)
	private String descrizione;
	
	@Column(name = "durata", nullable = false)
	private int durata;
	
	@Temporal(value = TemporalType.DATE)
	@Column(name = "data_uscita", nullable = false)
	private Date dataUscita;
	
	@Column(name = "foto", nullable = false, length = 4000)
	private String foto;
	
	@ManyToOne
	@JoinColumn(name = "artista_id", nullable = false, unique = true)
	private Artista artista;
	
	@ManyToOne
	@JoinColumn(name = "genere_id", nullable = false, unique = true)
	private Genere genere;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public int getDurata() {
		return durata;
	}

	public void setDurata(int durata) {
		this.durata = durata;
	}

	public Date getDataUscita() {
		return dataUscita;
	}

	public void setDataUscita(Date dataUscita) {
		this.dataUscita = dataUscita;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public Artista getArtista() {
		return artista;
	}

	public void setArtista(Artista artista) {
		this.artista = artista;
	}

	public Genere getGenere() {
		return genere;
	}

	public void setGenere(Genere genere) {
		this.genere = genere;
	}

	@Override
	public String toString() {
		return "Album [id=" + id + ", titolo=" + titolo + ", descrizione=" + descrizione + ", durata=" + durata
				+ ", dataUscita=" + dataUscita + ", foto=" + foto + "]";
	} 
	
	
}

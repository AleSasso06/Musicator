package it.generationitaly.musicator.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

public class Playlist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "titolo", nullable = false, length = 90)
	private String titolo;

	@Column(name = "durata")
	private int durata;

	@Column(name = "foto", nullable = false, length = 4000)
	private String foto;

	@Column(name = "data_creazione", nullable = false)
	private Date dataCreazione;

	@Column(name = "pubblica", nullable = false)
	private boolean pubblica;

	@ManyToOne
	private Utente utente;

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

	public int getDurata() {
		return durata;
	}

	public void setDurata(int durata) {
		this.durata = durata;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public Date getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(Date dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	public boolean isPubblica() {
		return pubblica;
	}

	public void setPubblica(boolean pubblica) {
		this.pubblica = pubblica;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}

	@Override
	public String toString() {
		return "Playlist [id=" + id + ", titolo=" + titolo + ", durata=" + durata + ", foto=" + foto
				+ ", dataCreazione=" + dataCreazione + ", pubblica=" + pubblica + "]";
	}

}

package it.generationitaly.musicator.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "playlist")
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
	private String foto; // dovremo impostare una foto di default

	@Temporal(TemporalType.DATE)
	@Column(name = "data_creazione", nullable = false)
	private Date dataCreazione = new Date();

	@Column(name = "privata", nullable = false)
	private boolean privata;

	@ManyToOne
	@JoinColumn(name = "utente_id")
	private Utente utente;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "playlist_brano", joinColumns = @JoinColumn(name = "playlist_id"), inverseJoinColumns = @JoinColumn(name = "brano_id"))
	private List<Brano> brani = new ArrayList<Brano>();

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

	public boolean isPrivata() {
		return privata;
	}

	public void setPrivata(boolean privata) {
		this.privata = privata;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	
	public List<Brano> getBrani() {
		return brani;
	}

	public void setBrani(List<Brano> brani) {
		this.brani = brani;
	}
	
	@Override
    public boolean equals(Object o) {
        if (this == o) return true; // Self-comparison
        if (o == null || getClass() != o.getClass()) return false; // Null or class mismatch

        Playlist playlist = (Playlist) o; // Cast object to Person

        // Compare relevant fields
        return id == playlist.id;
    }

    @Override
    public int hashCode() {
        // Combine fields to generate hash code
        return Objects.hash(id);
    }

	@Override
	public String toString() {
		return "Playlist [id=" + id + ", titolo=" + titolo + ", durata=" + durata + ", foto=" + foto
				+ ", dataCreazione=" + dataCreazione + ", privata=" + privata + "]";
	}

}

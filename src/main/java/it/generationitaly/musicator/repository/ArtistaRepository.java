package it.generationitaly.musicator.repository;

import java.util.List;

import it.generationitaly.musicator.entity.Artista;

public interface ArtistaRepository extends JpaRepository<Artista, Long>{

	Artista findByNome(String pseudonimo);
	List<Artista> findByNazionalita(String nazionalita);
	
	
}

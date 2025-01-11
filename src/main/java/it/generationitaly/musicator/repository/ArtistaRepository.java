package it.generationitaly.musicator.repository;

import java.util.List;


import it.generationitaly.musicator.entity.Artista;


public interface ArtistaRepository extends JpaRepository<Artista, Long>{

	List<Artista> findByPseudonimo(String pseudonimo);
	
	List<Artista> findByNazionalita(String nazionalita);
	
	List<Artista> findByNome(String nome); 
	
}

package it.generationitaly.musicator.repository;

import java.util.List;

import it.generationitaly.musicator.entity.Genere;

public interface GenereRepository extends JpaRepository<Genere, Long>{

	List<Genere> findByNome(String nome);
	
}

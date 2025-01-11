package it.generationitaly.musicator.repository;

import it.generationitaly.musicator.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Long> {
	
	Utente findByUsername(String user);
	Utente findByEmail(String email);
 
}

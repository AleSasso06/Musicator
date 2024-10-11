package it.generationitaly.musicator.repository;

import it.generationitaly.musicator.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Long> {
	
	//findByUsername(String user)
	//findByEmail(String email)

}

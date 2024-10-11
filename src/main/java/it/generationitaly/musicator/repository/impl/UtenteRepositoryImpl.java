package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;

public class UtenteRepositoryImpl extends JpaRepositoryImpl<Utente, Long> implements UtenteRepository {

	public UtenteRepositoryImpl() {
		super(Utente.class);
	}

}

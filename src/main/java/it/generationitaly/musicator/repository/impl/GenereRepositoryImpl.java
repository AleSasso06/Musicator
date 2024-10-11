package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.repository.GenereRepository;

public class GenereRepositoryImpl extends JpaRepositoryImpl<Genere, Long> implements GenereRepository{

	public GenereRepositoryImpl() {
		super(Genere.class);
	}

}

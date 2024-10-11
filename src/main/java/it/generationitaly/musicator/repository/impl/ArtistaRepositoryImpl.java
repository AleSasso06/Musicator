package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.JpaRepository;

public class ArtistaRepositoryImpl extends JpaRepositoryImpl<Artista, Long> implements ArtistaRepository{

	public ArtistaRepositoryImpl() {
		super(Artista.class);
		
	}

}

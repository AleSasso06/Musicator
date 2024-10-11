package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.BranoRepository;

public class BranoRepositoryImpl extends JpaRepositoryImpl<Brano, Long> implements BranoRepository{

	public BranoRepositoryImpl() {
		super(Brano.class);
	}

}

package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.repository.AlbumRepository;

public class AlbumRepositoryImpl extends JpaRepositoryImpl<Album, Long> implements AlbumRepository {

	public AlbumRepositoryImpl() {
		super(Album.class);
	}

}

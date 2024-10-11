package it.generationitaly.musicator.repository.impl;

import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.repository.PlaylistRepository;

public class PlaylistRepositoryImpl extends JpaRepositoryImpl<Playlist, Long> implements PlaylistRepository {

	public PlaylistRepositoryImpl() {
		super(Playlist.class);

	}

}

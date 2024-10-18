package it.generationitaly.musicator.repository;

import java.util.List;

import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Playlist;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {

	List<Playlist> findByTitolo(String titolo);
	
	List<Playlist> findByBrano(String titolo);

}

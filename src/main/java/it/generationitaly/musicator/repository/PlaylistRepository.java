package it.generationitaly.musicator.repository;

import java.util.List;

import it.generationitaly.musicator.entity.Playlist;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {

	List<Playlist> findbyTitolo(String titolo);

}

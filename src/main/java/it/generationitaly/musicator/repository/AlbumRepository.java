package it.generationitaly.musicator.repository;

import it.generationitaly.musicator.entity.Album;

public interface AlbumRepository extends JpaRepository<Album, Long>{
	/*findByTitolo
	findByArtista
	findByBrano
	findByGenere*/
}

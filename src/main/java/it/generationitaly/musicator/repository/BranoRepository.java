package it.generationitaly.musicator.repository;

import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Genere;

public interface BranoRepository extends JpaRepository<Brano, Long>{

	List<Brano> findByTitolo(String titolo);
	
	// artista o string nome? uso l'id(Artista artista) o il nome(String artista)?
	List<Brano> findByArtista(Artista artista);
	
	// samesies: id o titolo album?
	List<Brano> findByAlbum(Album album);
	
	// di nuovo: id o nome?
	List<Brano> findByGenere(Genere genere);
	
	List<Brano> findByLingua(String lingua);
}

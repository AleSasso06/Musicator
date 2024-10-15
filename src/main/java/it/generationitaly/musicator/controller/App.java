package it.generationitaly.musicator.controller;

import java.util.List;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import it.generationitaly.musicator.repository.PersistenceUtil;
import it.generationitaly.musicator.repository.*;
import it.generationitaly.musicator.repository.impl.*;
import it.generationitaly.musicator.entity.*;

public class App {

	private static AlbumRepository albumRepository = new AlbumRepositoryImpl();
	
	public static void main(String[] args) {
		
		List<Album> albums = albumRepository.findAll();
		  if (!albums.isEmpty()) {
		  for (Album album : albums) {
		   System.out.println(albums);
		  }
		  } else {
		   System.out.println("Nessun brano trovato");
		  }
}
}

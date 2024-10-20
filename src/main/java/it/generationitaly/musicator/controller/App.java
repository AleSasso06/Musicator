package it.generationitaly.musicator.controller;

import java.io.IOException;
import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import it.generationitaly.musicator.repository.*;
import it.generationitaly.musicator.repository.impl.*;
import it.generationitaly.musicator.entity.*;

public class App {
	
	private static GenereRepository genereRepository = new GenereRepositoryImpl();
	private static BranoRepository branoRepository = new BranoRepositoryImpl();
	private static AlbumRepository albumRepository = new AlbumRepositoryImpl();
	private static PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	public static void main(String[] args) {
		
		metodo3();
		
	}
	
	private static void metodo3() {
		
		List<Playlist> playlists = playlistRepository.findByPrivata();
		if (playlists != null && !playlists.isEmpty()) {
			for (Playlist playlist : playlists) {
				System.out.println("Playlist:" + playlist.getTitolo());
			}
		} else {
			System.out.println("Nessuna playlist trovata");
		}
	}
	
	private static void metodo2() {
		
		Genere genere = genereRepository.findById(Long.parseLong("11"));
		System.out.println(genere);
		
		List<Brano> brani = branoRepository.findByGenereId(Long.parseLong("11"));
		for (Brano brano : brani) {
			List<Album> albums = albumRepository.findByBranoId(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}
		List<Album> album = albumRepository.findByGenereId(Long.parseLong("11"));
		
		genere.setAlbum(album);
		genere.setBrani(brani);
		
		if (genere.getBrani() != null && !genere.getBrani().isEmpty()) {
			for (Brano brano : genere.getBrani()) {
				System.out.println("Brani:" + brano.getTitolo());
				if (brano.getAlbum() != null && !brano.getAlbum().isEmpty()) {
					for (Album albume : brano.getAlbum()) {
						System.out.println("Album brano:" + albume.getTitolo());
					}
				} else {
					System.out.println("Nessun album trovato");
				}
			}
		} else {
			System.out.println("Nessun brano trovato");

		}
		
		if (genere.getAlbum() != null && !genere.getAlbum().isEmpty()) {
			for (Album albume : genere.getAlbum()) {
				System.out.println("Album:" + albume.getTitolo());
			}
		} else {
			System.out.println("Nessun album trovato");
		}
		
	}
	
	private static void metodo1() {
		
		List<Album> albums = albumRepository.findByGenereId(Long.parseLong("11"));
		List<Brano> brani = branoRepository.findByGenereId(Long.parseLong("11"));
		

		if (brani != null && !brani.isEmpty()) {
			for (Brano brano : brani) {
				System.out.println("Brani:" + brano.getTitolo());
			}
		} else {
			System.out.println("Nessun brano trovato");

		}
		
		if (albums != null && !albums.isEmpty()) {
			for (Album album : albums) {
				System.out.println("Album:" + album.getTitolo());
			}
		} else {
			System.out.println("Nessun album trovato");

		}
	}
}

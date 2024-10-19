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

	private static BranoRepository branoRepository = new BranoRepositoryImpl();
	private static AlbumRepository albumRepository = new AlbumRepositoryImpl();
	private static PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	public static void main(String[] args) {
	
		Playlist playlist = playlistRepository.findById(Long.parseLong("1"));
		List<Brano> brani = playlist.getBrani();
		for (Brano brano : brani) {
			System.out.println(brano);
		}
		
		
//		Album album = albumRepository.findById(Long.parseLong("6"));
//		
//		List<Brano> brani = branoRepository.findByAlbumId(6);
//		
//		if(brani != null && !brani.isEmpty()) {
//			for (Brano brano : brani) {
//				System.out.println(brano.getTitolo());
//			}
//		} else {
//			System.out.println("Nessun brano trovato");
//		}
//	
	}
}

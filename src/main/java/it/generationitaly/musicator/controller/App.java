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

	public static void main(String[] args) {
		Brano brano= branoRepository.findById(Long.parseLong("45"));
		List<Album> albums = brano.getAlbum();
		for (Album album : albums) {
			System.out.println(album);
		}
			/*in seguito aggiungere casistiche di ricerca diverse
			   prendendno il parametro (request.getParameter("genere")
			List<Brano> brani = branoRepository.findAll();
			for(Brano brano: brani) {
				List<Album> albums = brano.getAlbum();	
				System.out.println(albums.size());
				}
	*/
	}
}

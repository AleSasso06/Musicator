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
		
		Album album = albumRepository.findById(Long.parseLong("6"));
		List<Brano> brani = branoRepository.findByAlbumId(6);
		album.setBrano(brani);
		
		if(brani != null && !brani.isEmpty()) {
			for (Brano brano : brani) {
				System.out.println("Brani:" + brano.getTitolo());
			}
		} else {
			System.out.println("Nessun brano trovato");
		}
	
	}
}

package it.generationitaly.musicator.controller;

import java.util.List;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;

public class App {

	public static void main(String[] args) {
		ArtistaRepository artistaRepository = new ArtistaRepositoryImpl();
		List<Artista> artisti = artistaRepository.findAll();
		for(Artista artista : artisti) {
			System.err.println(artista);
		}
	}

}

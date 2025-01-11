package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;

public class BraniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BranoRepository branoRepository = new BranoRepositoryImpl();
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Album> albums = null;

		List<Brano> brani = branoRepository.findAll();
		// assegna al brano soltanto la lista di album in cui è presente
		for (Brano brano : brani) {
			albums = albumRepository.findByBranoId(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}

		request.setAttribute("brani", brani);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("brani.jsp");
		requestDispatcher.forward(request, response);
	}

}

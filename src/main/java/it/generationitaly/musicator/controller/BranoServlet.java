package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;

public class BranoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BranoRepository branoRepository = new BranoRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		long id = Long.parseLong(request.getParameter("id"));

		Brano brano = branoRepository.findById(id);
		if (brano != null) {
			List<Album> albums = branoRepository.findAlbumsByBrano(id);
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}

		request.setAttribute("brano", brano);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-brano.jsp");
		requestDispatcher.forward(request, response);

	}

}

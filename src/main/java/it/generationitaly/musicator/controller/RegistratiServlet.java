package it.generationitaly.musicator.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class RegistratiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String foto = request.getParameter("foto");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		// String dataNascitaAsString = request.getParameter("dataNascita");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		/*
		 * Date dataNascita = null; SimpleDateFormat sdf = new
		 * SimpleDateFormat("dd/MM/yyyy"); try { dataNascita =
		 * sdf.parse(dataNascitaAsString); } catch (ParseException e) {
		 * System.err.println("Errore, formato non corretto"); return; }
		 */

		System.out.println("username:" + username);

		if (utenteRepository.findByUsername(username) != null) {
			response.sendRedirect("sign-in.jsp?erroreUsernameEsistente");
			return;
		}
		
		if (utenteRepository.findByEmail(email) != null) {
			response.sendRedirect("sign-in.jsp?erroreEmailGiaEsistente");
			return;
		}

		Utente utente = new Utente();
		utente.setFoto(foto);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setEmail(email);
		// utente.setDataNascita(dataNascita);
		utente.setUsername(username);
		utente.setPassword(password);

		utenteRepository.save(utente);
		response.sendRedirect("login.jsp");
	}

}

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
		Utente utente = new Utente();
		
		String foto = "https://img.freepik.com/vettori-premium/icona-del-profilo-utente-in-stile-piatto-illustrazione-del-vettore-avatar-membro-su-sfondo-isolato-concetto-di-business-del-segno-di-autorizzazione-umana_157943-15752.jpg";
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		// String dataNascitaAsString = request.getParameter("dataNascita");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		/*Date dataNascita = null;
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			dataNascita = sdf.parse(dataNascitaAsString);
		} catch (ParseException e) {
			System.err.println("Errore, formato non corretto");
			return;
		}*/
		
		System.out.println(username);
		
		if (utente.getUsername().equalsIgnoreCase(username)) {
			response.sendRedirect("registrati.jsp?erroreUsernameEsistente");
			return;
		}
		
		System.out.println("Foto: " + foto);
		System.out.println("Nome: " + nome);
		System.out.println("Cognome: " + cognome);
		System.out.println("Email: " + email);
		// System.out.println("Data di nascita: " + dataNascita);
		System.out.println("Username: " + username);
		System.out.println("Password: " + password);
		
		utente = utenteRepository.findByUsername(username);
		if (utente == null) {
			utente = new Utente();
			utente.setFoto(foto);
			utente.setNome(nome);
			utente.setCognome(cognome);
			utente.setEmail(email);
			// utente.setDataNascita(dataNascita);
			utente.setUsername(username);
			utente.setPassword(password);

			utenteRepository.save(utente);
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("registrati.jsp?erroreUsernameEsistente");
		}
	}

	
	
}

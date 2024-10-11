package it.generationitaly.musicator.repository.impl;

import java.util.List;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class UtenteRepositoryImpl extends JpaRepositoryImpl<Utente, Long> implements UtenteRepository {

	public UtenteRepositoryImpl() {
		super(Utente.class);
	}

	@Override
	public Utente findByUsername(String user) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> query = em.createQuery("FROM Utente u WHERE u.username = :user", Utente.class);
			query.setParameter("username", user);
			List<Utente> utenti = query.getResultList();
			utente = utenti.isEmpty() ? null : utenti.get(0);
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();

		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}

	@Override
	public Utente findByEmail(String email) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> query = em.createQuery("FROM Utente u WHERE u.email = :email", Utente.class);
			query.setParameter("email", email);
			List<Utente> utenti = query.getResultList();
			utente = utenti.isEmpty() ? null : utenti.get(0);
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();

		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}

}

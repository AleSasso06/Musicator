package it.generationitaly.musicator.controller;

import java.util.List;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import it.generationitaly.musicator.repository.PersistenceUtil;

public class App {

	public static void main(String[] args) {
		
		List<Brano> brani = findByTitolo("Try");
		if (!brani.isEmpty()) {
		for (Brano brano : brani) {
			System.out.println(brani);
		}
		} else {
			System.out.println("Nessun brano trovato");
		}
	}
	
	
	public static List<Brano> findByTitolo(String titolo) {
		EntityManagerFactory emf = PersistenceUtil.getEntityManagerFactory();
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// test like
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')", Brano.class);
			query.setParameter("titolo", titolo);
			brani = query.getResultList();
			tx.commit();
		} catch(Exception e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return brani;
	}

}

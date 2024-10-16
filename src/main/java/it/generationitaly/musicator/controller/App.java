package it.generationitaly.musicator.controller;

import java.util.List;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.ArtistaRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import it.generationitaly.musicator.repository.PersistenceUtil;
import it.generationitaly.musicator.repository.*;
import it.generationitaly.musicator.repository.impl.*;
import it.generationitaly.musicator.entity.*;

public class App {

	private static BranoRepository branoRepository = new BranoRepositoryImpl();
	private static AlbumRepository albumRepository = new AlbumRepositoryImpl();

	public static void main(String[] args) {

		List<Brano> brani = findByTitolo("tr");
		
		if(brani != null && !brani.isEmpty()) {
			for (Brano brano : brani) {
				System.out.println(brano);
			}
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
			// SELECT * FROM album_brano ab JOIN album a ON ab.album_id = a.id JOIN brano b ON ab.bano_id = b.id WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')
			TypedQuery<Brano> query = em.createQuery("FROM album_brano ab JOIN Album a ON ab.album_id = a.id JOIN Brano b ON ab.brano_id = b.id WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')", Brano.class);
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

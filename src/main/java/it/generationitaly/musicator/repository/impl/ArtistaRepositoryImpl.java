package it.generationitaly.musicator.repository.impl;

import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.ArtistaRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class ArtistaRepositoryImpl extends JpaRepositoryImpl<Artista, Long> implements ArtistaRepository{

	public ArtistaRepositoryImpl() {
		super(Artista.class);
		
	}
	@Override
	public List<Artista> findByPseudonimo(String pseudonimo) {
		List<Artista> artisti = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Artista> query = em.createQuery("FROM Artista a WHERE a.pseudonimo LIKE CONCAT('%',:pseudonimo,'%')", Artista.class);
			query.setParameter("pseudonimo", pseudonimo);
			/*List<Artista>*/ artisti = query.getResultList();
			// artista = artisti.isEmpty() ? null : artisti.get(0);
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return artisti;
	}

	@Override
	public List<Artista> findByNazionalita(String nazionalita) {
		List<Artista> artisti = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Artista> query = em.createQuery("FROM Artista a WHERE a.nazionalita = :nazionalita", Artista.class);
			query.setParameter("nazionalita", nazionalita);
			artisti = query.getResultList();
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return artisti; 
	}

	@Override
	public List<Artista> findByNome(String nome) {
		List<Artista> artisti = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Artista> query = em.createQuery("FROM Artista a WHERE a.nome LIKE CONCAT('%',:nome,'%')", Artista.class);
			query.setParameter("nome", nome);
			/*List<Artista>*/ artisti = query.getResultList();
			// artista = artisti.isEmpty() ? null : artisti.get(0);
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return artisti;
	}

	
}

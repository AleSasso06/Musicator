package it.generationitaly.musicator.repository.impl;

import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.repository.BranoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class BranoRepositoryImpl extends JpaRepositoryImpl<Brano, Long> implements BranoRepository{

	public BranoRepositoryImpl() {
		super(Brano.class);
	}

	@Override
	public List<Brano> findByTitolo(String titolo) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.titolo = :titolo", Brano.class);
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

	@Override
	public List<Brano> findByArtista(Artista artista) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM brano JOIN album ON alb
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.titolo = :titolo", Brano.class);
			query.setParameter("artista", artista);
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

	@Override
	public List<Brano> findByAlbum(Album album) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Brano> findByGenere(Genere genere) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Brano> findByLingua(String lingua) {
		// TODO Auto-generated method stub
		return null;
	}

}

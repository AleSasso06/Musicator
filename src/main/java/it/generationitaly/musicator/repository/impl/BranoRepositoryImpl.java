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
			// SELECT * FROM album_brano JOIN brano ON album_brano.brano_id = brano.id
			// JOIN album ON album.id = album_brano.album_id
			// JOIN artista ON album.artista_id = artista.id;
			TypedQuery<Brano> query = em.createQuery("FROM album_brano ab JOIN brano b ON ab.brano_id = b.id JOIN album al ON al.id = ab.album_id JOIN artista ar ON al.artista_id = ar.id WHERE ar.id = :artista", Brano.class);
			query.setParameter("artista", artista.getId());
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
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM album_brano JOIN brano ON album_brano.brano_id = brano.id
			// JOIN album ON album.id = album_brano.album_id;
			TypedQuery<Brano> query = em.createQuery("FROM album_brano ab JOIN brano b ON ab.brano_id = b.id JOIN album a ON a.id = ab.album_id WHERE a.id = :album", Brano.class);
			query.setParameter("album", album.getId());
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
	public List<Brano> findByGenere(Genere genere) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM Brano b WHERE b.genere_id = :genere;
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.genere_id = :genere", Brano.class);
			query.setParameter("genere", genere.getId());
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
	public List<Brano> findByLingua(String lingua) {
		// TODO Auto-generated method stub
		return null;
	}

}

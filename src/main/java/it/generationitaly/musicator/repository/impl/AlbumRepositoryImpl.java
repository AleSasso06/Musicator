package it.generationitaly.musicator.repository.impl;

import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.repository.AlbumRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class AlbumRepositoryImpl extends JpaRepositoryImpl<Album, Long> implements AlbumRepository {

	public AlbumRepositoryImpl() {
		super(Album.class);
	}

	@Override
	public List<Album> findByTitolo(String titolo) {
		List<Album> album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Album> query = em.createQuery("FROM Album a WHERE a.titolo = :titolo", Album.class);
			query.setParameter("titolo", titolo);
			album = query.getResultList();
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return album;
	}

	@Override
	public Album findByArtista(String pseudonimo) {
		Album album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String sql = "FROM Album a inner join Artista ar on album.artista_id = artista.id WHERE ar.pseudonimo = :pseudonimo";
			TypedQuery<Album> query = em.createQuery("sql", Album.class);
			query.setParameter("pseudonimo", pseudonimo);
			List<Album> album2 = query.getResultList();
			album = album2.isEmpty() ? null : album2.get(0);
			tx.commit();
		} catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		} finally {
			if(em != null)
				em.close();
		}
		return album;
	}

	@Override
	public List<Album> findByBrano(String titolo) {
		List<Album> album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String sql = "FROM Album a inner join album_brano ab on a.id = ab.album_id inner join Brano b on b.id = ab.brano_id WHERE b.titolo= :titolo";
			TypedQuery<Album> query = em.createQuery(sql, Album.class);
			query.setParameter("titolo", titolo);
			album = query.getResultList();
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return album;
	}

	@Override
	public List<Album> findByGenere(String nome) {
		List<Album> album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String sql = "FROM Album a inner join Genere g on album.genere_id = genere.id WHERE g.nome = :nome";
			TypedQuery<Album> query = em.createQuery(sql, Album.class);
			query.setParameter("nome", nome);
			album = query.getResultList();
			tx.commit();
		}catch(Exception e){
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
			
		}finally {
			if(em != null)
				em.close();
		}
		return album;
	}

}

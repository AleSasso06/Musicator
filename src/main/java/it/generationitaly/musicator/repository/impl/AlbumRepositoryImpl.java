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
			TypedQuery<Album> query = em.createQuery("FROM Album a WHERE a.titolo LIKE CONCAT('%',:titolo ,'%')", Album.class);
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
	public List<Album> findByArtista(String pseudonimo) {
		List<Album> album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String sql = "FROM Album a INNER JOIN a.artista ar WHERE ar.pseudonimo LIKE CONCAT('%',:pseudonimo ,'%')";
			TypedQuery<Album> query = em.createQuery(sql, Album.class);
			query.setParameter("pseudonimo", pseudonimo);
			/*List<Album>*/ album = query.getResultList();
			/*album = album2.isEmpty() ? null : album2.get(0);*/
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
			String sql = "SELECT a FROM Album a JOIN a.brani b WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')";
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
	public List<Album> findByBranoId(long id) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Album> albums = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String jpql = "SELECT a FROM Album a JOIN FETCH a.brani b WHERE b.id = :branoId";

			TypedQuery<Album> query = em.createQuery(jpql, Album.class);
			query.setParameter("branoId", id);
			albums = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return albums;
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
			String sql = "FROM Album a INNER JOIN a.genere g WHERE g.nome = :nome";
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

	@Override
	public List<Album> findByGenereId(long id) {
		List<Album> album = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String sql = "FROM Album a INNER JOIN a.genere g WHERE g.id = :id";
			TypedQuery<Album> query = em.createQuery(sql, Album.class);
			query.setParameter("id", id);
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

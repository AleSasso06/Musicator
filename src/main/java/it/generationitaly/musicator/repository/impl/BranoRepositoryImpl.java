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

public class BranoRepositoryImpl extends JpaRepositoryImpl<Brano, Long> implements BranoRepository {

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
			// test like
			// SELECT * FROM album_brano ab JOIN album a ON ab.album_id = a.id JOIN brano b
			// ON ab.bano_id = b.id WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.titolo LIKE CONCAT('%',:titolo ,'%')",
					Brano.class);
			query.setParameter("titolo", titolo);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Brano> findByArtista(String artista) {
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
			TypedQuery<Brano> query = em.createQuery(
					"FROM album_brano ab JOIN brano b ON ab.brano_id = b.id JOIN album al ON al.id = ab.album_id JOIN artista ar ON al.artista_id = ar.id WHERE ar.id LIKE CONCAT('%',:artista ,'%')",
					Brano.class);
			query.setParameter("artista", artista);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Brano> findByAlbum(String album) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM album_brano JOIN brano ON album_brano.brano_id = brano.id JOIN
			// album ON album.id = album_brano.album_id;
			TypedQuery<Brano> query = em.createQuery(
					"FROM album_brano ab JOIN brano b ON ab.brano_id = b.id JOIN album a ON a.id = ab.album_id WHERE a.titolo LIKE CONCAT('%',:album ,'%')",
					Brano.class);
			query.setParameter("album", album);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Brano> findByGenere(String genere) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM Brano b WHERE b.genere_id = :genere;
			// SELECT * FROM brano JOIN genere ON brano.genere_id = genere.id WHERE
			// genere.nome LIKE '%R&B%';
			// manca case insensitive e testing
			TypedQuery<Brano> query = em.createQuery(
					"FROM brano b JOIN genere g ON b.genere_id = g.id WHERE g.nome LIKE CONCAT('%',:genere ,'%')",
					Brano.class);
			query.setParameter("genere", genere);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Brano> findByLingua(String lingua) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// test like
			TypedQuery<Brano> query = em.createQuery("FROM Brano b WHERE b.lingua LIKE CONCAT('%',:lingua ,'%')",
					Brano.class);
			query.setParameter("lingua", lingua);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Brano> findByGenereId(long id) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			// SELECT * FROM Brano b WHERE b.genere_id = :genere;
			// SELECT * FROM brano JOIN genere ON brano.genere_id = genere.id WHERE
			// genere.nome LIKE '%R&B%';
			// manca case insensitive e testing
			TypedQuery<Brano> query = em
					.createQuery("FROM Brano b JOIN Genere g ON b.genere_id = g.id WHERE g.id = :id", Brano.class);
			query.setParameter("id", id);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}

	@Override
	public List<Album> findAlbumsByBrano(Long id) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Album> albums = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String jpql = "SELECT a FROM Album a JOIN a.brani b WHERE b.id = :branoId";

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
	public List<Brano> findDistinct() {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Brano> brani = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			String jpql = "SELECT b FROM album_brano ab JOIN Brano b ON b.id = ab.brano_id JOIN Album a ON ab.album_id = a.id JOIN Artista ar ON a.artista_id = ar.id GROUP BY ar.id";

			TypedQuery<Brano> query = em.createQuery(jpql, Brano.class).setMaxResults(12);
			brani = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return brani;
	}
}

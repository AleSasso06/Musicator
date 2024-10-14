package it.generationitaly.musicator.repository.impl;

import java.util.List;

import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.repository.GenereRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class GenereRepositoryImpl extends JpaRepositoryImpl<Genere, Long> implements GenereRepository{

	public GenereRepositoryImpl() {
		super(Genere.class);
	}

	@Override
	public List<Genere> findByNome(String nome) {
		EntityManager em = null;
		EntityTransaction tx = null;
		List<Genere> generi = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Genere> query = em.createQuery("FROM Genere g WHERE g.nome LIKE CONCAT('%',:nome,'%')", Genere.class);
			query.setParameter("nome", nome);
			generi = query.getResultList();
			tx.commit();
		}catch(Exception e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		}finally {
			if(em != null)
				em.close();
		}
		return generi;
	}

}

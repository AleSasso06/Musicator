package it.generationitaly.musicator.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

/*
CREATE TABLE genere (
	    id BIGINT AUTO_INCREMENT NOT NULL,
	    nome VARCHAR(45) NOT NULL,
	    UNIQUE (nome),
	    PRIMARY KEY (id)
	);*/
@Entity
@Table(name = "genere")
public class Genere {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;
	
	@Column(name = "nome", nullable = false, length = 45)
	private String nome;
	
	/*
	@OneToMany(mappedBy = "genere")
	private Album album;
	*/
	
	@OneToMany(mappedBy = "genere")
	private Brano brani;
}

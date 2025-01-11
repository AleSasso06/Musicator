-- DROP SCHEMA musicator;--
CREATE SCHEMA musicator;
USE musicator;

CREATE TABLE genere (
    id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    UNIQUE (nome),
    PRIMARY KEY (id)
);
 
CREATE TABLE artista (
    id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(90) NOT NULL,
    pseudonimo VARCHAR(90) NOT NULL,
    data_nascita DATE NOT NULL,
    nazionalita VARCHAR(45) NOT NULL,
    biografia VARCHAR(4000) NOT NULL,
    foto VARCHAR(4000) NOT NULL,
    band BOOLEAN NOT NULL DEFAULT(FALSE),
    PRIMARY KEY (id)
);

CREATE TABLE album (
    id BIGINT AUTO_INCREMENT NOT NULL,
    titolo VARCHAR(200) NOT NULL,
    descrizione VARCHAR(4000) NOT NULL,
    durata INT NOT NULL,
    data_uscita DATE NOT NULL,
    foto VARCHAR(4000) NOT NULL,
    artista_id BIGINT NOT NULL,
    genere_id BIGINT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (id),
    FOREIGN KEY (genere_id)
        REFERENCES genere (id),
    PRIMARY KEY (id)
);


CREATE TABLE brano (
    id BIGINT AUTO_INCREMENT NOT NULL,
    titolo VARCHAR(200) NOT NULL,
    testo VARCHAR(4000) NOT NULL,
    durata INT NOT NULL,
    data_uscita DATE NOT NULL,
    lingua VARCHAR(90) NOT NULL,
    foto VARCHAR(4000),
    yt_link VARCHAR(1000) NOT NULL,
    genere_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (genere_id)
        REFERENCES genere (id)
);

CREATE TABLE album_brano (
    id BIGINT AUTO_INCREMENT NOT NULL,
    brano_id BIGINT NOT NULL,
    album_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (album_id , brano_id),
    FOREIGN KEY (album_id)
        REFERENCES album (id),
    FOREIGN KEY (brano_id)
        REFERENCES brano (id)
);

CREATE TABLE utente(
id BIGINT AUTO_INCREMENT NOT NULL,
username VARCHAR(90) NOT NULL,
password VARCHAR(90) NOT NULL,
nome VARCHAR(90) NOT NULL,
cognome VARCHAR(90) NOT NULL,
email VARCHAR(90) NOT NULL,
foto VARCHAR(4000) NOT NULL,
data_creazione DATE NOT NULL,
PRIMARY KEY (id),
UNIQUE(username),
UNIQUE(email)
);

CREATE TABLE playlist(
id BIGINT AUTO_INCREMENT NOT NULL,
titolo VARCHAR(90) NOT NULL,
durata INT NOT NULL,
foto VARCHAR(4000) NOT NULL,
data_creazione DATE NOT NULL,
privata BOOLEAN NOT NULL DEFAULT(FALSE),
utente_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (utente_id)
REFERENCES utente(id)
);

CREATE TABLE playlist_brano(
 id BIGINT AUTO_INCREMENT NOT NULL,
    playlist_id BIGINT NOT NULL,
    brano_id BIGINT NOT NULL,
    UNIQUE(brano_id, playlist_id),
    PRIMARY KEY(id),
     FOREIGN KEY (playlist_id)
        REFERENCES playlist(id),
     FOREIGN KEY (brano_id)
        REFERENCES brano (id)
   );
-- Creation des tables
CREATE TABLE CLIENT (
  id_client SERIAL PRIMARY KEY,
  nom_client CHAR(30) NULL,
  raison_sociale_client CHAR(30) NOT NULL,
  adresse_client CHAR(40) NULL,
  code_postal_client CHAR(5) NULL,
  activite_client CHAR(30) NULL
);
CREATE TABLE CONTACT (
  id_contact SERIAL PRIMARY KEY,
  nom_contact CHAR(30) NULL,
  prenom_contact CHAR(30) NULL,
  tel_contact CHAR(15) NOT NULL,
  email_contact CHARACTER VARYING(30) NULL,
  role_contact CHAR(30) NOT NULL,
id_client BIGINT NOT NULL,
FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
);





CREATE TABLE FONCTION (
  id_fonction SERIAL PRIMARY KEY,
  libelle_fonction CHAR(40) NULL,
  Date_debut DATE NULL,
  Date_fin DATE NULL
);
CREATE TABLE LOCALITES (
  id_localite SERIAL PRIMARY KEY,
  nom_localite CHAR(60) NOT NULL
);
CREATE TABLE DIVISION (
  id_division SERIAL PRIMARY KEY,
  num_div NUMERIC NULL,
  nom_div CHARACTER VARYING(30) NULL,
  adresse_div CHARACTER VARYING(40) NULL,
  code_postal_div CHAR(5) NULL,
  id_localite BIGINT NOT NULL, 
FOREIGN KEY (id_localite) REFERENCES LOCALITES(id_localite)
);


CREATE TABLE POLE_COMPETENCE (
  id_pole_competence SERIAL PRIMARY KEY,
  id_region CHAR(30) NULL
);
CREATE TABLE EQUIPE (
  id_equipe SERIAL PRIMARY KEY,
  specialisation_equip CHAR(30) NULL,
  nombremembre_equip SMALLINT NULL,
  Date_debut DATE NULL,
  Date_fin DATE NULL,
  id_pole_competence BIGINT NOT NULL, 
FOREIGN KEY (id_pole_competence) REFERENCES POLE_COMPETENCE(id_pole_competence)
);

CREATE TABLE PROJET (
  id_projet SERIAL PRIMARY KEY,
  tache_projet CHAR(40) NULL,
  num_projet BIGINT NULL,
  description_projet CHAR(300) NULL,
  theme_projet TEXT NULL,
  date_debut_projet DATE NULL,
  date_fin_projet DATE NULL,
  id_client BIGINT NOT NULL,
FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
);

CREATE TABLE SALARIE (
  id_salarie SERIAL PRIMARY KEY,
  matricule_salarie BIGINT NULL,
  nom_salarie CHAR(30) NULL,
  prenom_salarie CHAR(30) NULL,
  tel_salarie CHAR(15) NULL,
  email_salarie CHARACTER VARYING(30) NULL,
  fonction_salarie CHAR(30) NULL,
  salaire_salarie BIGINT NULL,
  trigramme_salarie CHAR(3) NOT NULL,
id_equipe BIGINT NOT NULL,
id_manager BIGINT NULL,
id_projet BIGINT NOT NULL,
id_fonction BIGINT NOT NULL,
id_division BIGINT NOT NULL,
FOREIGN KEY (id_equipe) REFERENCES EQUIPE(id_equipe),
FOREIGN KEY (id_manager) REFERENCES SALARIE(id_salarie),
FOREIGN KEY (id_projet) REFERENCES PROJET(id_projet),
FOREIGN KEY (id_fonction) REFERENCES FONCTION(id_fonction),
FOREIGN KEY (id_division) REFERENCES DIVISION(id_division)
);

CREATE TABLE MATERIEL (
  id_materiel SERIAL PRIMARY KEY,
  num_materiel BIGINT NULL,
  nom_materiel CHAR(40) NULL,
  type_materiel CHAR(40) NULL,
  ref_constructeur CHARACTER VARYING(40) NULL,
  id_salarie BIGINT NOT NULL,
  id_compose BIGINT NOT NULL,
FOREIGN KEY (id_salarie) REFERENCES SALARIE(id_salarie),
FOREIGN KEY (id_compose) REFERENCES MATERIEL(id_materiel)
);

CREATE TABLE MATERIEL_COMPOSE (
  id_materiel BIGINT NULL,
  id_compose BIGINT NULL,
  PRIMARY KEY (id_materiel ,id_compose),
  FOREIGN KEY (id_materiel) REFERENCES MATERIEL(id_materiel),
  FOREIGN KEY (id_compose) REFERENCES MATERIEL(id_materiel)
);
CREATE TABLE TACHE (
  id_tache SERIAL PRIMARY KEY,
  num_tache BIGINT NULL,
  nom_tache CHAR(30) NULL,
  descrip_tache TEXT NOT NULL
);

CREATE TABLE SALARIE_TACHE (
  Date_debut DATE NULL,
  Date_fin DATE NULL,
id_salarie BIGINT NOT NULL,
id_tache BIGINT NOT NULL,
  PRIMARY KEY(id_salarie,id_tache),
  FOREIGN KEY(id_salarie)REFERENCES SALARIE(id_salarie),
  FOREIGN KEY(id_tache)REFERENCES TACHE(id_tache)
);


CREATE TABLE "salle_cinema" (
	"id" serial NOT NULL,
	"nom_salle" serial(255) NOT NULL,
	CONSTRAINT "salle_cinema_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tarifs" (
	"id" serial NOT NULL,
	"plein" FLOAT NOT NULL,
	"etudiant" FLOAT NOT NULL,
	"ados" FLOAT NOT NULL,
	CONSTRAINT "tarifs_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "seance" (
	"id" serial NOT NULL,
	"id_cinema" DECIMAL NOT NULL,
	"id_salle_cinema" DECIMAL NOT NULL,
	"id_film" DECIMAL NOT NULL,
	"id_horaire" DECIMAL NOT NULL,
	CONSTRAINT "Seance_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "place_salle" (
	"id" serial NOT NULL,
	"id_salle" DECIMAL NOT NULL,
	"restant_place" DECIMAL NOT NULL,
	"place_max" DECIMAL NOT NULL,
	"reservation_disponible" BOOLEAN NOT NULL,
	CONSTRAINT "place_salle_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "horaire" (
	"id" serial NOT NULL,
	"horaire" DATETIME NOT NULL,
	CONSTRAINT "Horaire_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "film" (
	"id" serial NOT NULL,
	"nom_film" varchar(255) NOT NULL,
	CONSTRAINT "Film_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cinema" (
	"id" serial NOT NULL,
	"nom_cinema" varchar(255) NOT NULL,
	CONSTRAINT "cinema_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Users" (
	"id" serial NOT NULL,
	"users" varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	"password_verif" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL,
	"rang" DECIMAL NOT NULL,
	CONSTRAINT "Users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



/*------------------ INSERTIONS ---------------------*/


INSERT INTO film (id, nom_film) VALUES
(1, 'Spiderman'),
(2, 'Unchartead'),
(3, 'Boite Noire'),
(4, 'Avengers');




INSERT INTO place_salle (id, id_salle, restant_place, max_place, reservation_disponible) VALUES
(1, 1, 50, 50, 0),
(2, 2, 35, 70, 0),
(3, 3, 60, 80, 0),
(4, 4, 15, 50, 0),
(5, 5, 0, 100, 1);


INSERT INTO seance (id, id_cinema, id_salle_cinema, id_film, id_horaire) VALUES
(1, 1, 1, 1, 1),
(2, 3, 2, 3, 2),
(3, 2, 3, 2, 3),
(4, 2, 4, 2, 3);



INSERT INTO tarif (id, plein, etudiant, ados) VALUES
(1, 9.2, 7.6, 5.9);




INSERT INTO salle_cinema (id, nom_salle) VALUES
(1, 'Salle1'),
(2, 'Salle2'),
(3, 'Salle3'),
(4, 'Salle4'),
(5, 'Salle5');


INSERT INTO cinema (id, nom_cinema) VALUES
(1, 'CineBordeaux'),
(2, 'CineParis'),
(3, 'CineNice'),
(4, 'CineRennes');


INSERT INTO horaire (id, horaire) VALUES
(1, '2022-03-22 16:00:00'),
(2, '2022-03-22 18:00:00'),
(3, '2022-03-22 21:00:00');


INSERT INTO users (id, users, password, password_verif, email, rang) VALUES
(1, 'Admin', '889c6853a117aca83ef9d6523335dc065213ae86', '889c6853a117aca83ef9d6523335dc065213ae86', 'admin@outlook.fr', 1);


















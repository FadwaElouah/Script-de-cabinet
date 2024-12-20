------------créer la base de données:

CREATE DATABASE avocatconnect;

----------créer table d'utilisateur:---------------------

CREATE TABLE utilisateur (
    id_user int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom varchar(50) NOT NULL,
    prenom varchar(50) NOT NULL,
    Email varchar(50) NOT NULL,
    Telephone varchar(50) NOT NULL,
    role enum ('client','avocat')
)

-----------INSERTION;

INSERT INTO utilisateur (prenom, nom, email, telephone, role)
VALUES
('karim', 'karim', 'karim@gmail.com', '0123456789', 'client'),
('said', 'said', 'said@gmail.com', '0987654321', 'avocat'),
('mouna', 'mouna', 'mouna@gmail.com', '0147258392', 'client');

 -----------UPDATE;
 UPDATE utilisateur
 set nom = Nom varchar(30)
 where id_user = 1;

 ----------DELETE;

 DELETE FROM utilisateur
 where id_user = 1;

----------------------créer table disponible :------------------------
  CREAT TABLE disponible (
    id_dispo int NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    date_debut datetime NOT NULL,
    date_fine datetime NOT NULL ,
    status enum ('disponible' , 'occupé')

  )

 -----------INSERTION;

 INSERT INTO disponibilite ( date_debut ,date_fin, status, id_avocat)
VALUES 
('2024-12-18 09:00:00', '2024-12-18 12:00:00', 'disponible', 1),
('2024-12-19 14:00:00', '2024-12-19 17:00:00', 'disponible', 2),
('2024-12-20 10:00:00', '2024-12-20 13:00:00', 'occupé', 3);

 

 ----------UPDATE 
 UPDATE disponibilite 
 SET date_debut date NOT NULL
 WHERE id_dispo = 1;

 ---------DELETE 

 DELETE FROM desponibilite
 where id_dispo = 1; 


------------------------créer table info :-------------------
CREATE TABLE info (
  id_info int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Bio varchar(50) NOT NULL,
  specialite varchar(50) NOT NULL,
  annee_experience int NOT NULL,
  id_avocat int ,
  FOREIGN KEY (id_avocat) REFERENCES utilisateur (id_user)

)

-----------INSERTION;


INSERT INTO info ( Bio, specialite, annee_experience, id_avocat)
VALUES
('Avocat spécialisé en droit pénal, passionné par la justice.', 'Droit pénal', 10, 1),
('Avocat en droit des affaires, expert en contrats commerciaux.', 'Droit des affaires', 7, 2),
('Spécialiste en droit de la famille, protection des droits familiaux.', 'Droit de la famille', 12, 3);


 --------UPDATE :
 UPDATE info 
 SET specialite varchar (30)
 where id_info = 1;

 --------DELETE:
 DELETE FROM info
 where id_info = 1;


 ---------------créer table reservation :------------------
 CREATE TABLE reservation(
  id_reservation int NOT NULL PRIMARY KEY AUTO_INCREMENT;
  date_reservation date 

 )

 ---------INSERTION

 
INSERT INTO reservation (date_reservation , status , id_avocat , id_client)
VALUES
 ('2024-12-12' , 'Confirmée' , 2 ,1 ),
 ('2024-11-09' , 'Annulée', 2 , 3),
 ('2024-03-11', 'Confirmée' , 2 , 1)


--------UPDATE 

UPDATE reservation 
SET status = 'Annulée' 
WHERE id_reservation = 2;


-----DALETE
DELETE FROM reservation 
where id_reservation = 1;

------------JOin 
SELECT utilisateur.nom, utilisateur.prenom, info.specialite, info.annee_experience
FROM utilisateur
INNER JOIN info ON utilisateur.id_user = info.id_avocat










    
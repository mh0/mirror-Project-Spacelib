DELETE FROM VOYAGE
DELETE FROM TRANSFERT
DELETE FROM REVISION
DELETE FROM QUAI
DELETE FROM NAVETTE
DELETE FROM ADMINISTRATEUR
DELETE FROM CONDUCTEUR
DELETE FROM MECANICIEN
DELETE FROM USAGER
DELETE FROM STATION
INSERT INTO ADMINISTRATEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (100, CURRENT_TIMESTAMP, 'adminl', 'admin', 'UZAN', 'Lucas')
INSERT INTO ADMINISTRATEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (101 , CURRENT_TIMESTAMP, 'adminm', 'admin', 'HENTATI', 'Mahdi')
INSERT INTO ADMINISTRATEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (102 , CURRENT_TIMESTAMP, 'adminp', 'admin', 'ROQUES-GEOFFROY', 'Philippe')
INSERT INTO CONDUCTEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (100 , CURRENT_TIMESTAMP, 'conducl', 'conduc', 'UZAN', 'Lucas')
INSERT INTO CONDUCTEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (101 , CURRENT_TIMESTAMP, 'conducm', 'conduc', 'HENTATI', 'Mahdi')
INSERT INTO CONDUCTEUR (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (102 , CURRENT_TIMESTAMP, 'conducp', 'conduc', 'ROQUES-GEOFFROY', 'Philippe')
INSERT INTO MECANICIEN (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (100 , CURRENT_TIMESTAMP, 'mecanol', 'mecano', 'UZAN', 'Lucas')
INSERT INTO MECANICIEN (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (101 , CURRENT_TIMESTAMP, 'mecanom', 'mecano', 'HENTATI', 'Mahdi')
INSERT INTO MECANICIEN (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (102 , CURRENT_TIMESTAMP, 'mecanop', 'mecano', 'ROQUES-GEOFFROY', 'Philippe')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (100 ,'sol.d', 'Terre', 15, 'Disponible')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (101 ,'pegasi.b', 'Dimidium', 15, 'Disponible')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (102 ,'delphini.b', 'Arion', 15, 'Disponible')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (103 ,'cancri.c', 'Brahe', 15, 'Disponible')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (104 ,'epsilonTauri.b', 'Amateru', 15, 'Disponible')
INSERT INTO STATION (ID, LOCALISATION, NOM, NOMBRE_QUAIS, STATUT) VALUES (105,'gammaCepheiA.b', 'Tadmor', 15, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (100, 5, 3, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (101, 5, 3, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (102, 5, 3, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (103, 3, 0, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (104, 3, 0, 'Disponible')
INSERT INTO NAVETTE (ID, NBPLACES, NBVOYAGES, STATUT) VALUES (105, 3, 0, 'Disponible')
INSERT INTO QUAI (ID, STATUT, ID_STATION) VALUES (100, 'Disponible', 100)
INSERT INTO QUAI (ID, STATUT, ID_STATION) VALUES (101, 'Disponible', 101)
INSERT INTO QUAI (ID, STATUT, ID_STATION) VALUES (102, 'Disponible', 102)
INSERT INTO QUAI (ID, STATUT, ID_STATION, ID_NAVETTE) VALUES (103, 'Disponible', 100, 103)
INSERT INTO QUAI (ID, STATUT, ID_STATION, ID_NAVETTE) VALUES (104, 'Disponible', 100, 104)
INSERT INTO QUAI (ID, STATUT, ID_STATION, ID_NAVETTE) VALUES (105, 'Disponible', 100, 105)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_MECANICIEN, ID_NAVETTE, ID_QUAI) VALUES (100, TIMESTAMP('2018-01-24 08:00:00'), 'Disponible', 100, 100, 100)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_MECANICIEN, ID_NAVETTE, ID_QUAI) VALUES (101, TIMESTAMP('2018-01-24 08:00:00'), 'Disponible', 101, 101, 101)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_MECANICIEN, ID_NAVETTE, ID_QUAI) VALUES (102, TIMESTAMP('2018-01-24 08:00:00'), 'Disponible', 102, 102, 102)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_NAVETTE, ID_QUAI) VALUES (103, CURRENT_TIMESTAMP, 'révision nécessaire', 103, 103)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_NAVETTE, ID_QUAI) VALUES (104, CURRENT_TIMESTAMP, 'révision nécessaire', 104, 104)
INSERT INTO REVISION (ID, DATE_CREATION, STATUT, ID_NAVETTE, ID_QUAI) VALUES (105, CURRENT_TIMESTAMP, 'révision nécessaire', 105, 105)
INSERT INTO TRANSFERT (ID, DATE_ARRIVEE, DATE_CREATION, DATE_DEPART, NOMBRE_PASSAGERS, STATUT, ID_CONDUCTEUR, ID_NAVETTE, ID_QUAI_ARRIVE, ID_QUAI_DEPART) VALUES (100, TIMESTAMP('2018-09-24 08:00:00'), CURRENT_TIMESTAMP, TIMESTAMP('2018-09-22 08:00:00'), 5, 'Disponible', 100, 100, 101, 100)
INSERT INTO USAGER (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (100 , CURRENT_TIMESTAMP, 'usagerl', 'usager', 'UZAN', 'Lucas')
INSERT INTO USAGER (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (101 , CURRENT_TIMESTAMP, 'usagerm', 'usager', 'HENTATI', 'Mahdi')
INSERT INTO USAGER (ID, DATE_CREATION, LOGIN, MOT_DE_PASSE, NOM, PRENOM) VALUES (102 , CURRENT_TIMESTAMP, 'usagerp', 'usager', 'ROQUES-GEOFFROY', 'Philippe')
INSERT INTO VOYAGE (ID, DATE_ARRIVEE, DATE_CREATION, DATE_DEPART, NOMBRE_PASSAGERS, STATUT, ID_NAVETTE, ID_QUAI_ARRIVE, ID_QUAI_DEPART, ID_USAGER) VALUES (100, TIMESTAMP('2018-09-24 08:00:00'), CURRENT_TIMESTAMP, TIMESTAMP('2018-09-22 08:00:00'), 5, 'Disponible', 100, 101, 100, 100)
DROP TABLE IF EXISTS `type`;
DROP TABLE IF EXISTS `line`;
DROP TABLE IF EXISTS `favorite`;
DROP TABLE IF EXISTS `station`;

CREATE TABLE `type` (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`name`  TEXT NOT NULL
);
CREATE TABLE `line` (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`type`  INTEGER NOT NULL,
	`code`  TEXT NOT NULL,
	`name`  TEXT NOT NULL,
	`way_a` TEXT NOT NULL,
	`way_r` TEXT NOT NULL
);
CREATE TABLE "station" (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`type`  INTEGER NOT NULL,
	`line`  INTEGER NOT NULL,
	`code`  TEXT NOT NULL,
	`name`  TEXT NOT NULL
);
CREATE TABLE `favorite` (
	`id`            INTEGER PRIMARY KEY AUTOINCREMENT,
	`station_id`    INTEGER NOT NULL
);


INSERT INTO `type`(`id`,`name`) VALUES (NULL,'rers');
INSERT INTO `type`(`id`,`name`) VALUES (NULL,'metros');
INSERT INTO `type`(`id`,`name`) VALUES (NULL,'tramways');

INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,1,'A','RER A','Cergy-Poissy-Saint Germain en Laye','Marne la Vallee-Boissy Saint Leger');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,1,'B','RER B','Robinson-Saint Remy les Chevreuse','Aeroport Ch.De Gaulle 2-Mitry Claye');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,1,'C','RER C',"Saint Martin d'Etampes",'Saint Quentin en Yvelines');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,1,'D','RER D','Melun','Orry la Ville-Creil');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,1,'E','RER E','Chelles Gournay-Tournan','Haussmann Saint Lazare');

INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'1','Métro 1','La Defense','Chateau de Vincennes');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'2','Métro 2','Porte Dauphine','Nation');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'3','Métro 3','Pont de Levallois - Becon','Gallieni');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'3b','Métro 3b','Gambetta','Porte des Lilas');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'4','Métro 4','Mairie de Montrouge','Porte de Clignancourt');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'5','Métro 5',"Place d'Italie",'Bobigny - Pablo Picasso');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'6','Métro 6','Charles de Gaulle - Etoile','Nation');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'7','Métro 7',"Villejuif-L. Aragon / Mairie d'Ivry",'la Courneuve - 8 Mai 1945');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'7b','Métro 7b','Louis Blanc','Pre-Saint-Gervais');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'8','Métro 8','Pointe du Lac','Balard');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'9','Métro 9','Mairie de Montreuil','Pont de Sevres');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'10','Métro 10',"Gare d'Austerlitz",'Boulogne - Pont de Saint Cloud');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'11','Métro 11','Chatelet','Mairie des Lilas');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'12','Métro 12','Front Populaire',"Mairie d'Issy");
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'13','Métro 13','St-Denis-Universite/Les Courtilles','Chatillon - Montrouge');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'14','Métro 14','Olympiades','Saint-Lazare');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'Fun','Funicilaire','Funiculaire','Funiculaire');
INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,2,'Orv','Orly Val','Orly Sud','Antony-RER');

INSERT INTO `line`(`id`,`type`,`code`,`name`,`way_a`,`way_r`) VALUES (NULL,3,'','','','');

INSERT INTO `station`(`id`,`type`,`line`,`code`,`name`,) VALUES (NULL,1,1,'saint+germain+en+laye','Saint-Germain-en-Laye');

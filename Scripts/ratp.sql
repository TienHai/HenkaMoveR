-- Create table ratp

DROP TABLE IF EXISTS `transport_type`;
DROP TABLE IF EXISTS `line`;
DROP TABLE IF EXISTS `favorite`;
DROP TABLE IF EXISTS `station`;
DROP TABLE IF EXISTS `mission_code`;

CREATE TABLE `transport_type` (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`name`  TEXT NOT NULL
);
CREATE TABLE `line` (
	`id`    INTEGER PRIMARY KEY,
	`transport_type`  INTEGER NOT NULL,
	`code`  TEXT NOT NULL,
	`name`  TEXT NOT NULL,
	`way_a` TEXT NOT NULL,
	`way_r` TEXT NOT NULL
);
CREATE TABLE `station` (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`transport_type`  INTEGER NOT NULL,
	`line`  INTEGER NOT NULL,
	`slug`  TEXT NOT NULL,
	`name`  TEXT NOT NULL
);
CREATE TABLE `favorite` (
	`id`            INTEGER PRIMARY KEY AUTOINCREMENT,
	`station_id`    INTEGER NOT NULL
);
CREATE TABLE `mission_code` (
	`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
	`line_id`  INTEGER NOT NULL,
	`position`  INTEGER NOT NULL,
	`code`  TEXT NOT NULL,
	`destination`  TEXT NOT NULL
);


-- #######################################################
-- #  transport_type
-- #######################################################

INSERT INTO `transport_type`(`id`,`name`) VALUES (NULL,"rers");
INSERT INTO `transport_type`(`id`,`name`) VALUES (NULL,"metros");
INSERT INTO `transport_type`(`id`,`name`) VALUES (NULL,"tramways");


-- #######################################################
-- #  favorite
-- #######################################################

INSERT INTO `favorite`(`id`,`station_id`) VALUES (NULL,22);
INSERT INTO `favorite`(`id`,`station_id`) VALUES (NULL,32);


-- #######################################################
-- #  Mission code
-- #######################################################

-- Rer A
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"Z","Saint-Germain-en-Laye");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"N","Boissy-Saint-Léger");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"U","Cergy-le-Haut");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"Q","Chessy");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"T","Poissy");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"O","Torcy");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"C","Auber");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"G","Charles de Gaulle - Etoile");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"B","La Défense");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"Y","Rueil-Malmaison");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"X","Le Vésinet - Le Pecq");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"D","Noisy-le-Grand");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"R","La Varenne - Chennevières");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"E","Joinville-le-Pont");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"I","Achères-Ville");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"J","Nanterre Préfecture");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,77,0,"F","Nanterre Préfecture");

-- Rer B
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"A","Gare du Nord");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"S","Robinson");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"E","Aéroport CDG 2");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"P","St Remy les Chevreuse");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"I","Mitry-Claye");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"K","Massy-Palaiseau");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"J","Denfert - Rochereau");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"C","Cité Universitaire");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"L","Orsay Ville");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"D","La Plaine Stade de France");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"F","Le Bourget");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"M","Châtelet les Halles");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"H","Bourg la Reine");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"T","Palaiseau");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"U","Laplace");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"N","La Croix de Berny");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"Q","La Plaine Stade de France");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"O","Aéroport CDG1");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,78,0,"G","Aulnay sous bois");

-- Rer E
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"H","Haussmann - Saint Lazare");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"C","Chelles Gournay");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"G","Gagny");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"B","Roissy en Brie");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"P","Paris Est");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"D","Nogent Le Perreux");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"K","Pantin");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"R","Le Raincy - Villemomble - Montfermeil");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"S","Noisy le Sec");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"V","Villiers sur Marne Plessis Trévise");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"N","Magenta");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"J","Gagny");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"T","Tournan");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"E","Emerainville Pontault Combault");
INSERT INTO `mission_code`(`id`,`line_id`,`position`,`code`,`destination`) VALUES (NULL,264000,0,"G","Gretz Armainvilliers");


-- #######################################################
-- #  rers
-- #######################################################

INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (77, 1,"A","RER A","Marne-la-Vallee Chessy / Boissy-Saint-Leger","Cergy-Le-Haut / Poissy / Saint-Germain-en-Laye");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (78, 1,"B","RER B","Robinson / Saint-Remy-les-Chevreuse","Mitry-Claye / Aeroport Charles de Gaulle 2 TGV");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1028, 1,"C","RER C","Saint-Martin d'Etampes","Saint-Quentin-en-Yvelines");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1029, 1,"C","RER C","Dourdan-la-Foret","Saint-Quentin-en-Yvelines");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1030, 1,"C","RER C","Massy-Palaiseau / Dourdan","Pontoise / Gare d'Austerlitz Grandes Lignes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1031, 1,"C","RER C","Massy-Palaiseau","Champ de Mars-Tour Eiffel");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1032, 1,"C","RER C","Bretigny-sur-Orge","Versailles Chateau-Rive Gauche");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1033, 1,"C","RER C","Versailles-Chantiers","Versailles Chateau-Rive Gauche / Gare d'Austerlitz Grandes Lignes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (70960, 1,"C","RER C","Dourdan-la-Foret / Saint-Martin d'Etampes","Montigny-Beauchamp / Gare d'Austerlitz Grandes Lignes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (80928, 1,"C","RER C","Montigny-Beauchamp / Gare d'Austerlitz Grandes Lignes","Saint-Martin d'Etampes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (81323, 1,"C","RER C","Saint-Martin d'Etampes","Gare d'Austerlitz Grandes Lignes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (355743, 1,"C","RER C","Versailles-Chantiers","Juvisy-sur-Orge");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1273, 1,"D","RER D","Gare du Nord (Surface) / Melun","Gare de Lyon / Creil");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (1275, 1,"D","RER D","Gare du Nord (Surface) / Malesherbes","Gare de Lyon / Creil");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (25065, 1,"D","RER D","Melun","Creil / Gare de Lyon");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (80841, 1,"D","RER D","Corbeil-Essonnes","Gare de Lyon");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (213760, 1,"D","RER D","Melun","Stade de France-Saint-Denis");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (264000, 1,"E","RER E","Chelles Gournay / Tournan","Haussmann-Saint-Lazare / Gare de l'Est");

-- ### rers - A(77)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"saint+germain+en+laye","Saint-Germain-en-Laye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"le+vesinet+le+pecq","Le Vesinet-Le Pecq");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"le+vesinet+centre","Le Vesinet-Centre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"chatou+croissy","Chatou-Croissy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"rueil+malmaison","Rueil-Malmaison");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"nanterre+ville","Nanterre-Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"nanterre+universite","Nanterre-Universite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"cergy+le+haut","Cergy-Le-Haut");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"cergy+saint+christophe","Cergy-Saint-Christophe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"cergy+prefecture","Cergy-Prefecture");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"neuville+universite","Neuville-Universite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"conflans+fin+d'oise","Conflans-Fin d'Oise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"acheres+ville","Acheres-Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"poissy","Poissy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"acheres+grand+cormier","Acheres Grand Cormier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"maisons+laffitte","Maisons-Laffitte");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"sartrouville","Sartrouville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"houilles+carrieres+sur+seine","Houilles Carrieres-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"nanterre+prefecture","Nanterre-Prefecture");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"la+defense+(grande+arche)","La Defense (Grande Arche)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"charles+de+gaulle+etoile","Charles de Gaulle-Etoile");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"auber","Auber");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"nation","Nation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"vincennes","Vincennes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"val+de+fontenay","Val de Fontenay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"neuilly+plaisance","Neuilly-Plaisance");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"bry+sur+marne","Bry-sur-Marne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"noisy+le+grand+(mont+d'est)","Noisy-le-Grand (Mont d'Est)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"noisy+champs","Noisy-Champs");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"noisiel","Noisiel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"lognes","Lognes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"torcy","Torcy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"bussy+saint+georges","Bussy-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"val+d'europe","Val d'europe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"marne+la+vallee+chessy","Marne-la-Vallee Chessy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"fontenay+sous+bois","Fontenay-sous-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"nogent+sur+marne","Nogent-sur-Marne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"joinville+le+pont","Joinville-le-Pont");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"saint+maur+creteil","Saint-Maur Creteil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"le+parc+de+saint+maur","Le Parc de Saint-Maur");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"champigny","Champigny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"la+varenne+chennevieres","La Varenne-Chennevieres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"sucy+bonneuil","Sucy Bonneuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,77,"boissy+saint+leger","Boissy-Saint-Leger");

-- ### rers - B(78)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"aeroport+charles+de+gaulle+2+tgv","Aeroport Charles de Gaulle 2 TGV");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"aeroport+charles+de+gaulle+1","Aeroport Charles de Gaulle 1");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"parc+des+expositions","Parc des Expositions");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"villepinte","Villepinte");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"sevran+beaudottes","Sevran-Beaudottes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"mitry+claye","Mitry-Claye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"villeparisis","Villeparisis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"vert+galant","Vert-Galant");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"sevran+livry","Sevran Livry");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"aulnay+sous+bois","Aulnay-sous-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"blanc+mesnil","Blanc-Mesnil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"drancy","Drancy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"le+bourget","Le Bourget");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"la+courneuve+aubervilliers","La Courneuve-Aubervilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"la+plaine+stade+de+france","La Plaine-Stade de France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"luxembourg","Luxembourg");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"port+royal","Port-Royal");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"denfert+rochereau","Denfert-Rochereau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"cite+universitaire","Cite Universitaire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"gentilly","Gentilly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"laplace","Laplace");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"arcueil+cachan","Arcueil-Cachan");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"bagneux","Bagneux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"bourg+la+reine","Bourg-la-Reine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"sceaux","Sceaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"fontenay+aux+roses","Fontenay-aux-Roses");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"robinson","Robinson");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"parc+de+sceaux","Parc de Sceaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"la+croix+de+berny","La Croix-de-Berny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"antony","Antony");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"fontaine+michalon","Fontaine-Michalon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"les+baconnets","Les Baconnets");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"massy+verrieres","Massy-Verrieres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"massy+palaiseau","Massy-Palaiseau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"palaiseau","Palaiseau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"palaiseau+villebon","Palaiseau Villebon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"lozere","Lozere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"le+guichet","Le Guichet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"orsay+ville","Orsay-Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"bures+sur+yvette","Bures-sur-Yvette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"la+hacquiniere","La Hacquiniere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"gif+sur+yvette","Gif-sur-Yvette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"courcelle+sur+yvette","Courcelle-sur-Yvette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,78,"saint+remy+les+chevreuse","Saint-Remy-les-Chevreuse");

-- ### rers - C(1028)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"saint+quentin+en+yvelines","Saint-Quentin-en-Yvelines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"saint+cyr","Saint-Cyr");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"versailles+chantiers","Versailles-Chantiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"viroflay+rive+gauche","Viroflay-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"chaville+velizy","Chaville-Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"meudon+val+fleury","Meudon-Val-Fleury");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"issy","Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"issy+val+de+seine","Issy-Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"pont+du+garigliano+hopital+europeen+g.pompidou","Pont du Garigliano-Hopital Europeen G.Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"javel","Javel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"marolles+en+hurepoix","Marolles-en-Hurepoix");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"bouray","Bouray");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"lardy","Lardy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"chamarande","Chamarande");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"etrechy","Etrechy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"etampes","Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1028,"saint+martin+d'etampes","Saint-Martin d'Etampes");

-- ### rers - C(1029)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"saint+quentin+en+yvelines","Saint-Quentin-en-Yvelines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"saint+cyr","Saint-Cyr");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"versailles+chantiers","Versailles-Chantiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"porchefontaine","Porchefontaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"viroflay+rive+gauche","Viroflay-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"chaville+velizy","Chaville-Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"meudon+val+fleury","Meudon-Val-Fleury");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"issy","Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"issy+val+de+seine","Issy-Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"pont+du+garigliano+hopital+europeen+g.pompidou","Pont du Garigliano-Hopital Europeen G.Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"javel","Javel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"la+norville+saint+germain+les+arpajon","La Norville Saint-Germain-les-Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"arpajon","Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"egly","Egly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"breuillet+bruyeres+le+chatel","Breuillet Bruyeres-le-Chatel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"breuillet+village","Breuillet-Village");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"saint+cheron","Saint-Cheron");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"sermaise","Sermaise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"dourdan","Dourdan");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1029,"dourdan+la+foret","Dourdan-la-Foret");

-- ### rers - C(1030)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"gare+d'austerlitz+grandes+lignes","Gare d'Austerlitz Grandes Lignes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"pontoise","Pontoise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+ouen+l'aumone","Saint-Ouen-l'Aumone");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+ouen+l'aumone+liesse","Saint-Ouen-l'Aumone-Liesse");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"pierrelaye","Pierrelaye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"montigny+beauchamp","Montigny-Beauchamp");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"franconville+plessis+bouchard","Franconville Plessis-Bouchard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"cernay","Cernay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"ermont+eaubonne","Ermont-Eaubonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+gratien","Saint-Gratien");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"epinay+sur+seine","Epinay-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"gennevilliers","Gennevilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"les+gresillons","Les Gresillons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+ouen","Saint-Ouen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"porte+de+clichy","Porte de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"pereire","Pereire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"porte+maillot","Porte Maillot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"avenue+foch","Avenue Foch");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"avenue+henri+martin","Avenue Henri-Martin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"boulainvilliers","Boulainvilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"kennedy+radio+france","Kennedy Radio-France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"les+saules","Les Saules");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"orly+ville","Orly-Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"pont+de+rungis+aeroport+d'orly","Pont de Rungis Aeroport d'Orly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"rungis+la+fraternelle","Rungis-La Fraternelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"chemin+d'antony","Chemin d'Antony");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"massy+verrieres","Massy-Verrieres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"massy+palaiseau","Massy-Palaiseau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"la+norville+saint+germain+les+arpajon","La Norville Saint-Germain-les-Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"arpajon","Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"egly","Egly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"breuillet+bruyeres+le+chatel","Breuillet Bruyeres-le-Chatel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"breuillet+village","Breuillet-Village");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"saint+cheron","Saint-Cheron");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"sermaise","Sermaise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1030,"dourdan","Dourdan");

-- ### rers - C(1031)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"les+saules","Les Saules");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"orly+ville","Orly-Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"pont+de+rungis+aeroport+d'orly","Pont de Rungis Aeroport d'Orly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"rungis+la+fraternelle","Rungis-La Fraternelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"chemin+d'antony","Chemin d'Antony");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"massy+verrieres","Massy-Verrieres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1031,"massy+palaiseau","Massy-Palaiseau");

-- ### rers - C(1032)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"versailles+chateau+rive+gauche","Versailles Chateau-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"porchefontaine","Porchefontaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"viroflay+rive+gauche","Viroflay-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"chaville+velizy","Chaville-Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"meudon+val+fleury","Meudon-Val-Fleury");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"issy","Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"issy+val+de+seine","Issy-Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"pont+du+garigliano+hopital+europeen+g.pompidou","Pont du Garigliano-Hopital Europeen G.Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"javel","Javel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1032,"bretigny+sur+orge","Bretigny-sur-Orge");

-- ### rers - C(1033)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"gare+d'austerlitz+grandes+lignes","Gare d'Austerlitz Grandes Lignes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"versailles+chateau+rive+gauche","Versailles Chateau-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"porchefontaine","Porchefontaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"viroflay+rive+gauche","Viroflay-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"chaville+velizy","Chaville-Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"meudon+val+fleury","Meudon-Val-Fleury");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"issy","Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"issy+val+de+seine","Issy-Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"pont+du+garigliano+hopital+europeen+g.pompidou","Pont du Garigliano-Hopital Europeen G.Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"javel","Javel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"ivry+sur+seine","Ivry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"vitry+sur+seine","Vitry-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"les+ardoines","Les Ardoines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"petit+vaux","Petit-Vaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"gravigny+balizy","Gravigny-Balizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"chilly+mazarin","Chilly-Mazarin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"longjumeau","Longjumeau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"massy+palaiseau","Massy-Palaiseau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"igny","Igny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"bievres","Bievres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"vauboyen","Vauboyen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"jouy+en+josas","Jouy-en-Josas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"petit+jouy+les+loges","Petit-Jouy-les-Loges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1033,"versailles+chantiers","Versailles-Chantiers");

-- ### rers - C(70960)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"montigny+beauchamp","Montigny-Beauchamp");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"franconville+plessis+bouchard","Franconville Plessis-Bouchard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"cernay","Cernay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"ermont+eaubonne","Ermont-Eaubonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+gratien","Saint-Gratien");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"epinay+sur+seine","Epinay-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"gennevilliers","Gennevilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"les+gresillons","Les Gresillons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+ouen","Saint-Ouen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"porte+de+clichy","Porte de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"pereire","Pereire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"porte+maillot","Porte Maillot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"avenue+foch","Avenue Foch");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"avenue+henri+martin","Avenue Henri-Martin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"boulainvilliers","Boulainvilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"kennedy+radio+france","Kennedy Radio-France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"gare+d'austerlitz+grandes+lignes","Gare d'Austerlitz Grandes Lignes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"la+norville+saint+germain+les+arpajon","La Norville Saint-Germain-les-Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"arpajon","Arpajon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"egly","Egly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"breuillet+bruyeres+le+chatel","Breuillet Bruyeres-le-Chatel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"breuillet+village","Breuillet-Village");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+cheron","Saint-Cheron");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"sermaise","Sermaise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"dourdan","Dourdan");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"dourdan+la+foret","Dourdan-la-Foret");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"marolles+en+hurepoix","Marolles-en-Hurepoix");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"bouray","Bouray");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"lardy","Lardy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"chamarande","Chamarande");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"etrechy","Etrechy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"etampes","Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"saint+martin+d'etampes","Saint-Martin d'Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,70960,"dourdan+la+foret","Dourdan-la Foret");

-- ### rers - C(80928)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"saint+martin+d'etampes","Saint-Martin d'Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"etampes","Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"etrechy","Etrechy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"chamarande","Chamarande");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"lardy","Lardy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"bouray","Bouray");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"marolles+en+hurepoix","Marolles-en-Hurepoix");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"saint+michel+sur+orge","Saint-Michel-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"sainte+genevieve+des+bois","Sainte-Genevieve-des-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"epinay+sur+orge","Epinay-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"savigny+sur+orge","Savigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"kennedy+radio+france","Kennedy Radio-France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"boulainvilliers","Boulainvilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"avenue+henri+martin","Avenue Henri-Martin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"avenue+foch","Avenue Foch");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"porte+maillot","Porte Maillot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"pereire","Pereire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"porte+de+clichy","Porte de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"saint+ouen","Saint-Ouen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"les+gresillons","Les Gresillons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"gennevilliers","Gennevilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"epinay+sur+seine","Epinay-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"saint+gratien","Saint-Gratien");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"ermont+eaubonne","Ermont-Eaubonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"cernay","Cernay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"franconville+plessis+bouchard","Franconville Plessis-Bouchard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"montigny+beauchamp","Montigny-Beauchamp");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80928,"gare+d'austerlitz+grandes+lignes","Gare d'Austerlitz Grandes Lignes");

-- ### rers - C(81323)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"gare+d'austerlitz+grandes+lignes","Gare d'Austerlitz Grandes Lignes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"bretigny+sur+orge","Bretigny-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"marolles+en+hurepoix","Marolles-en-Hurepoix");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"bouray","Bouray");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"lardy","Lardy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"chamarande","Chamarande");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"etrechy","Etrechy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"etampes","Etampes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,81323,"saint+martin+d'etampes","Saint-Martin d'Etampes");

-- ### rers - C(355743)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"athis+mons","Athis-Mons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"ablon","Ablon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"villeneuve+le+roi","Villeneuve-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"choisy+le+roi","Choisy-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"saint+michel+notre+dame","Saint-Michel Notre-Dame");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"musee+d'orsay","Musee d'Orsay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"pont+de+l'alma","Pont de l'alma");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"champ+de+mars+tour+eiffel","Champ de Mars-Tour Eiffel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"javel","Javel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"issy+val+de+seine","Issy-Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"issy","Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"meudon+val+fleury","Meudon-Val-Fleury");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"chaville+velizy","Chaville-Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"viroflay+rive+gauche","Viroflay-Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"porchefontaine","Porchefontaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,355743,"versailles+chantiers","Versailles-Chantiers");

-- ### rers - D(1273)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"creil","Creil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"chantilly+gouvieux","Chantilly-Gouvieux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"orry+la+ville+coye","Orry-la-Ville Coye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"la+borne+blanche","La Borne-Blanche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"survilliers+fosses","Survilliers-Fosses");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"louvres","Louvres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"les+noues","Les Noues");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"goussainville","Goussainville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"villiers+le+bel+(gonesse+++arnouville)","Villiers-le-Bel (Gonesse - Arnouville)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"garges+sarcelles","Garges-Sarcelles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"pierrefitte+stains","Pierrefitte Stains");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"saint+denis","Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"stade+de+france+saint+denis","Stade de France-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"gare+de+lyon+(banlieue)","Gare de Lyon (Banlieue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"gare+du+nord+(surface)","Gare du Nord (Surface)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"maisons+alfort+alfortville","Maisons-Alfort Alfortville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"le+vert+de+maisons","Le Vert de Maisons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"creteil+pompadour","Creteil-Pompadour");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"villeneuve+triage","Villeneuve-Triage");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"villeneuve+saint+georges","Villeneuve-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"montgeron+crosne","Montgeron Crosne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"yerres","Yerres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"brunoy","Brunoy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"boussy+saint+antoine","Boussy-Saint-Antoine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"combs+la+ville+quincy","Combs-la-Ville Quincy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"lieusaint+moissy","Lieusaint Moissy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"savigny+le+temple+nandy","Savigny-le-Temple Nandy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"cesson","Cesson");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"le+mee","Le Mee");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1273,"melun","Melun");

-- ### rers - D(1275)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"creil","Creil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"chantilly+gouvieux","Chantilly-Gouvieux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"orry+la+ville+coye","Orry-la-Ville Coye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"la+borne+blanche","La Borne-Blanche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"survilliers+fosses","Survilliers-Fosses");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"louvres","Louvres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"les+noues","Les Noues");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"goussainville","Goussainville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"villiers+le+bel+(gonesse+++arnouville)","Villiers-le-Bel (Gonesse - Arnouville)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"garges+sarcelles","Garges-Sarcelles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"pierrefitte+stains","Pierrefitte Stains");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"saint+denis","Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"stade+de+france+saint+denis","Stade de France-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"gare+de+lyon+(banlieue)","Gare de Lyon (Banlieue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"gare+du+nord+(surface)","Gare du Nord (Surface)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"maisons+alfort+alfortville","Maisons-Alfort Alfortville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"le+vert+de+maisons","Le Vert de Maisons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"creteil+pompadour","Creteil-Pompadour");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"villeneuve+triage","Villeneuve-Triage");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"villeneuve+saint+georges","Villeneuve-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"vigneux+sur+seine","Vigneux-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"viry+chatillon","Viry-Chatillon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"ris+orangis","Ris-Orangis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"grand+bourg","Grand-Bourg");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"evry+val+de+seine","Evry Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"grigny+centre","Grigny-Centre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"orangis+bois+de+l'epine","Orangis Bois de l'Epine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"evry+courcouronnes","Evry Courcouronnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"le+bras+de+fer","Le Bras-de-Fer");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"corbeil+essonnes","Corbeil-Essonnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"moulin+galant","Moulin-Galant");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"mennecy","Mennecy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"ballancourt","Ballancourt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"la+ferte+alais","La Ferte-Alais");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"boutigny","Boutigny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"maisse","Maisse");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"buno+gironville","Buno-Gironville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"boigneville","Boigneville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,1275,"malesherbes","Malesherbes");

-- ### rers - D(25065)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"creil","Creil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"chantilly+gouvieux","Chantilly-Gouvieux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"orry+la+ville+coye","Orry-la-Ville Coye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"la+borne+blanche","La Borne-Blanche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"survilliers+fosses","Survilliers-Fosses");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"louvres","Louvres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"les+noues","Les Noues");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"goussainville","Goussainville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"villiers+le+bel+(gonesse+++arnouville)","Villiers-le-Bel (Gonesse - Arnouville)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"garges+sarcelles","Garges-Sarcelles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"pierrefitte+stains","Pierrefitte Stains");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"saint+denis","Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"stade+de+france+saint+denis","Stade de France-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"gare+de+lyon+(banlieue)","Gare de Lyon (Banlieue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"maisons+alfort+alfortville","Maisons-Alfort Alfortville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"le+vert+de+maisons","Le Vert de Maisons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"creteil+pompadour","Creteil-Pompadour");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"villeneuve+triage","Villeneuve-Triage");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"villeneuve+saint+georges","Villeneuve-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"vigneux+sur+seine","Vigneux-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"viry+chatillon","Viry-Chatillon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"grigny+centre","Grigny-Centre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"orangis+bois+de+l'epine","Orangis Bois de l'Epine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"evry+courcouronnes","Evry Courcouronnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"le+bras+de+fer","Le Bras-de-Fer");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"ris+orangis","Ris-Orangis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"grand+bourg","Grand-Bourg");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"evry+val+de+seine","Evry Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"corbeil+essonnes","Corbeil-Essonnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"essonnes+robinson","Essonnes-Robinson");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"villabe","Villabe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"le+plessis+chenet+ibm","Le Plessis-Chenet-IBM");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"coudray+montceaux","Coudray-Montceaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"saint+fargeau","Saint-Fargeau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"ponthierry+pringy","Ponthierry Pringy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"boissise+le+roi","Boissise-le-Roi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"vosves","Vosves");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,25065,"melun","Melun");

-- ### rers - D(80841)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"maisons+alfort+alfortville","Maisons-Alfort Alfortville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"le+vert+de+maisons","Le Vert de Maisons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"creteil+pompadour","Creteil-Pompadour");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"villeneuve+triage","Villeneuve-Triage");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"villeneuve+saint+georges","Villeneuve-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"vigneux+sur+seine","Vigneux-sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"juvisy+sur+orge","Juvisy-sur-Orge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"viry+chatillon","Viry-Chatillon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"grigny+centre","Grigny-Centre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"orangis+bois+de+l'epine","Orangis Bois de l'Epine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"evry+courcouronnes","Evry Courcouronnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"le+bras+de+fer","Le Bras-de-Fer");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,80841,"corbeil+essonnes","Corbeil-Essonnes");

-- ### rers - D(213760)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"stade+de+france+saint+denis","Stade de France-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"paris+nord","Paris-Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"chatelet+les+halles","Chatelet-Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"gare+de+lyon+(banlieue)","Gare de Lyon (Banlieue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"maisons+alfort+alfortville","Maisons-Alfort Alfortville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"villeneuve+saint+georges","Villeneuve-Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"montgeron+crosne","Montgeron Crosne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"yerres","Yerres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"brunoy","Brunoy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"boussy+saint+antoine","Boussy-Saint-Antoine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"combs+la+ville+quincy","Combs-la-Ville Quincy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"lieusaint+moissy","Lieusaint Moissy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"savigny+le+temple+nandy","Savigny-le-Temple Nandy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"cesson","Cesson");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"le+mee","Le Mee");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,213760,"melun","Melun");

-- ### rers - E(264000)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"gare+de+l'est","Gare de l'Est");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"haussmann+saint+lazare","Haussmann-Saint-Lazare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"magenta","Magenta");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"rosa+parks","Rosa Parks");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"pantin","Pantin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"noisy+le+sec","Noisy-le-Sec");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"bondy","Bondy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"le+raincy+villemomble+montfermeil","Le Raincy Villemomble Montfermeil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"gagny","Gagny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"le+chenay+gagny","Le Chenay Gagny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"chelles+gournay","Chelles Gournay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"rosny+bois+perrier","Rosny-Bois-Perrier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"rosny+sous+bois","Rosny-sous-Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"val+de+fontenay","Val de Fontenay");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"nogent+le+perreux","Nogent Le-Perreux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"les+boullereaux+champigny","Les Boullereaux Champigny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"villiers+sur+marne+plessis+trevise","Villiers-sur-Marne Plessis-Trevise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"les+yvris+noisy+le+grand","Les Yvris Noisy-le-Grand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"emerainville+pontault+combault","Emerainville Pontault-Combault");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"roissy+en+brie","Roissy-en-Brie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"ozoir+la+ferriere","Ozoir-la-Ferriere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"gretz+armainvilliers","Gretz-Armainvilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,1,264000,"tournan","Tournan");


-- #######################################################
-- #  metros
-- #######################################################

INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (62, 2,"1","Métro 1","La Defense (Grande Arche)","Chateau de Vincennes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (67, 2,"2","Métro 2","Porte Dauphine (Marechal de Lattre de Tassigny)","Nation");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (68, 2,"3","Métro 3","Pont de Levallois-Becon","Gallieni (Parc de Bagnolet)");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (69, 2,"3b","Métro 3b","Gambetta","Porte des Lilas");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (70, 2,"4","Métro 4","Mairie de Montrouge","Porte de Clignancourt");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (71, 2,"5","Métro 5","Place d'Italie","Bobigny-Pablo-Picasso");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (72, 2,"6","Métro 6","Charles de Gaulle-Etoile","Nation");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (73, 2,"7","Métro 7","Mairie d'Ivry / Villejuif-Louis Aragon","La Courneuve-8-Mai-1945");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (74, 2,"7b","Métro 7b","Louis Blanc","Pre-Saint-Gervais");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (172562, 2,"8","Métro 8","Pointe du Lac","Balard");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (76, 2,"9","Métro 9","Mairie de Montreuil","Pont de Sevres");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (63, 2,"10","Métro 10","Gare d'Austerlitz","Boulogne Pont de Saint-Cloud");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (64, 2,"11","Métro 11","Chatelet","Mairie des Lilas");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (65, 2,"12","Métro 12","Front Populaire","Mairie d'Issy");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (66, 2,"13","Métro 13","Saint-Denis-Universite / Asnieres-Gennevilliers Les Courtilles","Chatillon Montrouge");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (55098, 2,"14","Métro 14","Olympiades","Saint-Lazare");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (79, 2,"Fun","Métro Fun","Funiculaire Gare haute","Funiculaire Gare basse");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (455, 2,"Orv","Métro Orv","Orly-Sud","Antony");

-- ### metros - 1(62)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"chateau+de+vincennes","Chateau de Vincennes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"berault","Berault");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"saint+mande","Saint-Mande");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"porte+de+vincennes","Porte de Vincennes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"nation","Nation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"reuilly+diderot","Reuilly-Diderot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"bastille","Bastille");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"saint+paul+(le+marais)","Saint-Paul (Le Marais)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"hotel+de+ville","Hotel de Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"chatelet","Chatelet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"louvre+rivoli","Louvre-Rivoli");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"palais+royal+(musee+du+louvre)","Palais-Royal (Musee du Louvre)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"tuileries","Tuileries");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"concorde","Concorde");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"champs+elysees+clemenceau","Champs-Elysees-Clemenceau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"franklin+roosevelt","Franklin-Roosevelt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"george+v","George V");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"charles+de+gaulle+etoile","Charles de Gaulle-Etoile");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"argentine","Argentine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"porte+maillot","Porte Maillot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"les+sablons+(jardin+d'acclimatation)","Les Sablons (Jardin d'acclimatation)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"pont+de+neuilly","Pont de Neuilly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"esplanade+de+la+defense","Esplanade de la Defense");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,62,"la+defense+(grande+arche)","La Defense (Grande Arche)");

-- ### metros - 2(67)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"nation","Nation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"avron","Avron");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"alexandre+dumas","Alexandre-Dumas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"philippe+auguste","Philippe Auguste");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"pere+lachaise","Pere-Lachaise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"menilmontant","Menilmontant");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"couronnes","Couronnes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"belleville","Belleville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"colonel+fabien","Colonel Fabien");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"jaures","Jaures");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"stalingrad","Stalingrad");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"la+chapelle","La Chapelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"barbes+rochechouart","Barbes-Rochechouart");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"anvers","Anvers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"pigalle","Pigalle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"blanche","Blanche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"place+de+clichy","Place de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"rome","Rome");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"villiers","Villiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"monceau","Monceau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"courcelles","Courcelles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"ternes","Ternes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"charles+de+gaulle+etoile","Charles de Gaulle-Etoile");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"victor+hugo","Victor Hugo");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,67,"porte+dauphine+(marechal+de+lattre+de+tassigny)","Porte Dauphine (Marechal de Lattre de Tassigny)");

-- ### metros - 3(68)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"gallieni+(parc+de+bagnolet)","Gallieni (Parc de Bagnolet)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"porte+de+bagnolet","Porte de Bagnolet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"gambetta","Gambetta");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"pere+lachaise","Pere-Lachaise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"rue+saint+maur","Rue Saint-Maur");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"parmentier","Parmentier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"republique","Republique");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"temple","Temple");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"arts+et+metiers","Arts-et-Metiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"reaumur+sebastopol","Reaumur-Sebastopol");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"sentier","Sentier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"bourse","Bourse");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"quatre+septembre","Quatre Septembre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"opera","Opera");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"havre+caumartin","Havre-Caumartin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"saint+lazare","Saint-Lazare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"europe","Europe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"villiers","Villiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"malesherbes","Malesherbes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"wagram","Wagram");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"pereire","Pereire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"porte+de+champerret","Porte de Champerret");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"louise+michel","Louise Michel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"anatole+france","Anatole-France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,68,"pont+de+levallois+becon","Pont de Levallois-Becon");

-- ### metros - 3b(69)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,69,"porte+des+lilas","Porte des Lilas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,69,"saint+fargeau","Saint-Fargeau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,69,"pelleport","Pelleport");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,69,"gambetta","Gambetta");

-- ### metros - 4(70)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"porte+de+clignancourt","Porte de Clignancourt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"simplon","Simplon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"marcadet+poissonniers","Marcadet-Poissonniers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"chateau+rouge","Chateau Rouge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"barbes+rochechouart","Barbes-Rochechouart");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"gare+de+l'est+(verdun)","Gare de l'Est (Verdun)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"chateau+d'eau","Chateau d'Eau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"strasbourg+saint+denis","Strasbourg-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"reaumur+sebastopol","Reaumur-Sebastopol");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"etienne+marcel","Etienne Marcel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"les+halles","Les Halles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"chatelet","Chatelet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"cite","Cite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"saint+michel","Saint-Michel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"odeon","Odeon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"saint+germain+des+pres","Saint-Germain des Pres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"saint+sulpice","Saint-Sulpice");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"saint+placide","Saint-Placide");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"montparnasse+bienvenue","Montparnasse-Bienvenue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"vavin","Vavin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"raspail","Raspail");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"denfert+rochereau","Denfert-Rochereau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"mouton+duvernet","Mouton-Duvernet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"alesia","Alesia");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"porte+d'orleans+(general+leclerc)","Porte d'Orleans (General Leclerc)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,70,"mairie+de+montrouge","Mairie de Montrouge");

-- ### metros - 5(71)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"bobigny+pablo+picasso","Bobigny-Pablo-Picasso");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"bobigny+pantin+(raymond+queneau)","Bobigny-Pantin (Raymond Queneau)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"eglise+de+pantin","Eglise de Pantin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"hoche","Hoche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"porte+de+pantin","Porte de Pantin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"ourcq","Ourcq");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"laumiere","Laumiere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"jaures","Jaures");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"stalingrad","Stalingrad");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"gare+du+nord","Gare du Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"gare+de+l'est+(verdun)","Gare de l'Est (Verdun)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"jacques+bonsergent","Jacques-Bonsergent");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"republique","Republique");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"oberkampf","Oberkampf");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"richard+lenoir","Richard-Lenoir");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"breguet+sabin","Breguet-Sabin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"bastille","Bastille");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"quai+de+la+rapee","Quai de la Rapee");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"saint+marcel","Saint-Marcel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"campo+formio","Campo-Formio");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,71,"place+d'italie","Place d'Italie");

-- ### metros - 6(72)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"nation","Nation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"picpus","Picpus");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"bel+air","Bel-Air");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"daumesnil+(felix+eboue)","Daumesnil (Felix Eboue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"dugommier","Dugommier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"bercy","Bercy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"quai+de+la+gare","Quai de la Gare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"chevaleret","Chevaleret");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"nationale","Nationale");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"place+d'italie","Place d'Italie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"corvisart","Corvisart");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"glaciere","Glaciere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"saint+jacques","Saint-Jacques");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"denfert+rochereau","Denfert-Rochereau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"raspail","Raspail");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"edgar+quinet","Edgar-Quinet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"montparnasse+bienvenue","Montparnasse-Bienvenue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"pasteur","Pasteur");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"sevres+lecourbe","Sevres-Lecourbe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"cambronne","Cambronne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"la+motte+picquet+grenelle","La Motte-Picquet-Grenelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"dupleix","Dupleix");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"bir+hakeim+(grenelle)","Bir-Hakeim (Grenelle)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"passy","Passy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"trocadero","Trocadero");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"boissiere","Boissiere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"kleber","Kleber");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,72,"charles+de+gaulle+etoile","Charles de Gaulle-Etoile");

-- ### metros - 7(73)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"la+courneuve+8+mai+1945","La Courneuve-8-Mai-1945");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"fort+d'aubervilliers","Fort d'Aubervilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"aubervilliers+pantin+(4+chemins)","Aubervilliers Pantin (4 Chemins)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"porte+de+la+villette","Porte de la Villette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"corentin+cariou","Corentin-Cariou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"crimee","Crimee");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"riquet","Riquet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"stalingrad","Stalingrad");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"louis+blanc","Louis Blanc");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"chateau+landon","Chateau Landon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"gare+de+l'est+(verdun)","Gare de l'Est (Verdun)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"poissonniere","Poissonniere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"cadet","Cadet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"le+peletier","Le Peletier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"chaussee+d'antin+(la+fayette)","Chaussee d'Antin (La Fayette)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"opera","Opera");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"pyramides","Pyramides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"palais+royal+(musee+du+louvre)","Palais-Royal (Musee du Louvre)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"pont+neuf","Pont Neuf");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"chatelet","Chatelet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"pont+marie+(cite+des+arts)","Pont Marie (Cite des Arts)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"sully+morland","Sully-Morland");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"jussieu","Jussieu");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"place+monge+(jardin+des+plantes)","Place Monge (Jardin des Plantes)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"censier+daubenton","Censier-Daubenton");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"les+gobelins","Les Gobelins");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"place+d'italie","Place d'Italie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"tolbiac","Tolbiac");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"maison+blanche","Maison Blanche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"porte+d'italie","Porte d'Italie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"porte+de+choisy","Porte de Choisy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"porte+d'ivry","Porte d'Ivry");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"pierre+et+marie+curie","Pierre et Marie Curie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"mairie+d'ivry","Mairie d'Ivry");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"le+kremlin+bicetre","Le Kremlin-Bicetre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"villejuif+leo+lagrange","Villejuif-Leo Lagrange");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"villejuif+paul+vaillant+couturier+(hopital+paul+brousse)","Villejuif-Paul Vaillant Couturier (Hopital Paul Brousse)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,73,"villejuif+louis+aragon","Villejuif-Louis Aragon");

-- ### metros - 7b(74)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"pre+saint+gervais","Pre-Saint-Gervais");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"danube","Danube");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"botzaris","Botzaris");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"buttes+chaumont","Buttes-Chaumont");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"bolivar","Bolivar");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"jaures","Jaures");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"louis+blanc","Louis Blanc");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,74,"place+des+fetes","Place des Fetes");

-- ### metros - 8(172562)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"balard","Balard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"lourmel","Lourmel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"boucicaut","Boucicaut");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"felix+faure","Felix Faure");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"commerce","Commerce");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"la+motte+picquet+grenelle","La Motte-Picquet-Grenelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"ecole+militaire","Ecole Militaire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"la+tour+maubourg","La Tour-Maubourg");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"concorde","Concorde");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"madeleine","Madeleine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"opera","Opera");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"richelieu+drouot","Richelieu-Drouot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"grands+boulevards","Grands Boulevards");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"bonne+nouvelle","Bonne Nouvelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"strasbourg+saint+denis","Strasbourg-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"republique","Republique");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"filles+du+calvaire","Filles du Calvaire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"saint+sebastien+froissart","Saint-Sebastien-Froissart");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"chemin+vert","Chemin Vert");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"bastille","Bastille");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"ledru+rollin","Ledru-Rollin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"faidherbe+chaligny","Faidherbe-Chaligny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"reuilly+diderot","Reuilly-Diderot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"montgallet","Montgallet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"daumesnil+(felix+eboue)","Daumesnil (Felix Eboue)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"michel+bizot","Michel Bizot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"porte+doree","Porte Doree");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"porte+de+charenton","Porte de Charenton");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"liberte","Liberte");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"charenton+ecoles","Charenton-Ecoles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"ecole+veterinaire+de+maisons+alfort","Ecole Veterinaire de Maisons-Alfort");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"maisons+alfort+stade","Maisons-Alfort-Stade");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"maisons+alfort+les+juilliottes","Maisons-Alfort-Les Juilliottes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"creteil+l'echat+(hopital+henri+mondor)","Creteil-L'Echat (Hopital Henri Mondor)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"creteil+universite","Creteil-Universite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"creteil+prefecture+(hotel+de+ville)","Creteil-Prefecture (Hotel de Ville)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,172562,"pointe+du+lac","Pointe du Lac");

-- ### metros - 9(76)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"pont+de+sevres","Pont de Sevres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"billancourt","Billancourt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"marcel+sembat","Marcel Sembat");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"porte+de+saint+cloud","Porte de Saint-Cloud");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"exelmans","Exelmans");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"michel+ange+molitor","Michel-Ange-Molitor");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"michel+ange+auteuil","Michel-Ange-Auteuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"jasmin","Jasmin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"ranelagh","Ranelagh");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"la+muette","La Muette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"rue+de+la+pompe+(avenue+georges+mandel)","Rue de la Pompe (Avenue Georges Mandel)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"trocadero","Trocadero");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"iena","Iena");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"alma+marceau","Alma-Marceau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"franklin+roosevelt","Franklin-Roosevelt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"saint+philippe+du+roule","Saint-Philippe du Roule");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"miromesnil","Miromesnil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"saint+augustin","Saint-Augustin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"havre+caumartin","Havre-Caumartin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"chaussee+d'antin+(la+fayette)","Chaussee d'Antin (La Fayette)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"richelieu+drouot","Richelieu-Drouot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"grands+boulevards","Grands Boulevards");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"bonne+nouvelle","Bonne Nouvelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"strasbourg+saint+denis","Strasbourg-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"republique","Republique");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"oberkampf","Oberkampf");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"saint+ambroise","Saint-Ambroise");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"voltaire+(leon+blum)","Voltaire (Leon Blum)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"charonne","Charonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"rue+des+boulets","Rue des Boulets");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"nation","Nation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"buzenval","Buzenval");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"maraichers","Maraichers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"porte+de+montreuil","Porte de Montreuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"robespierre","Robespierre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"croix+de+chavaux+(jacques+duclos)","Croix-de-Chavaux (Jacques Duclos)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,76,"mairie+de+montreuil","Mairie de Montreuil");

-- ### metros - 10(63)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"boulogne+pont+de+saint+cloud","Boulogne Pont de Saint-Cloud");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"boulogne+jean+jaures","Boulogne-Jean-Jaures");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"porte+d'auteuil","Porte d'Auteuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"michel+ange+molitor","Michel-Ange-Molitor");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"chardon+lagache","Chardon-Lagache");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"mirabeau","Mirabeau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"javel+andre+citroen","Javel-Andre-Citroen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"charles+michels","Charles Michels");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"avenue+emile+zola","Avenue Emile-Zola");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"la+motte+picquet+grenelle","La Motte-Picquet-Grenelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"segur","Segur");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"duroc","Duroc");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"vaneau","Vaneau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"sevres+babylone","Sevres-Babylone");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"mabillon","Mabillon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"odeon","Odeon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"cluny+la+sorbonne","Cluny-La Sorbonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"maubert+mutualite","Maubert-Mutualite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"cardinal+lemoine","Cardinal-Lemoine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"jussieu","Jussieu");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"gare+d'austerlitz","Gare d'Austerlitz");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"eglise+d'auteuil","Eglise d'Auteuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,63,"michel+ange+auteuil","Michel-Ange-Auteuil");

-- ### metros - 11(64)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"mairie+des+lilas","Mairie des Lilas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"porte+des+lilas","Porte des Lilas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"telegraphe","Telegraphe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"place+des+fetes","Place des Fetes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"jourdain","Jourdain");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"pyrenees","Pyrenees");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"belleville","Belleville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"goncourt+(hopital+saint+louis)","Goncourt (Hopital Saint-Louis)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"republique","Republique");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"arts+et+metiers","Arts-et-Metiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"rambuteau","Rambuteau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"hotel+de+ville","Hotel de Ville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,64,"chatelet","Chatelet");

-- ### metros - 12(65)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"mairie+d'issy","Mairie d'Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"corentin+celton","Corentin-Celton");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"porte+de+versailles","Porte de Versailles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"convention","Convention");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"vaugirard+(adolphe+cherioux)","Vaugirard (Adolphe Cherioux)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"volontaires","Volontaires");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"pasteur","Pasteur");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"falguiere","Falguiere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"montparnasse+bienvenue","Montparnasse-Bienvenue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"notre+dame+des+champs","Notre-Dame des Champs");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"rennes","Rennes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"sevres+babylone","Sevres-Babylone");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"rue+du+bac","Rue du Bac");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"solferino","Solferino");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"assemblee+nationale","Assemblee Nationale");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"concorde","Concorde");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"madeleine","Madeleine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"saint+lazare","Saint-Lazare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"trinite+d'estienne+d'orves","Trinite-d'Estienne d'Orves");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"notre+dame+de+lorette","Notre-Dame de Lorette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"saint+georges","Saint-Georges");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"pigalle","Pigalle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"abbesses","Abbesses");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"lamarck+caulaincourt","Lamarck-Caulaincourt");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"jules+joffrin","Jules Joffrin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"marcadet+poissonniers","Marcadet-Poissonniers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"marx+dormoy","Marx-Dormoy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"porte+de+la+chapelle","Porte de la Chapelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,65,"front+populaire","Front Populaire");

-- ### metros - 13(66)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"chatillon+montrouge","Chatillon Montrouge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"malakoff+rue+etienne+dolet","Malakoff-Rue Etienne Dolet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"malakoff+plateau+de+vanves","Malakoff-Plateau de Vanves");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"porte+de+vanves","Porte de Vanves");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"plaisance","Plaisance");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"pernety","Pernety");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"gaite","Gaite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"montparnasse+bienvenue","Montparnasse-Bienvenue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"duroc","Duroc");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"saint+francois+xavier","Saint-Francois-Xavier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"varenne","Varenne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"invalides","Invalides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"champs+elysees+clemenceau","Champs-Elysees-Clemenceau");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"miromesnil","Miromesnil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"saint+lazare","Saint-Lazare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"liege","Liege");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"place+de+clichy","Place de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"la+fourche","La Fourche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"guy+moquet","Guy-Moquet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"porte+de+saint+ouen","Porte de Saint-Ouen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"garibaldi","Garibaldi");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"mairie+de+saint+ouen","Mairie de Saint-Ouen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"carrefour+pleyel","Carrefour-Pleyel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"saint+denis+++porte+de+paris","Saint-Denis - Porte de Paris");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"basilique+de+saint+denis","Basilique de Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"saint+denis+universite","Saint-Denis-Universite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"brochant","Brochant");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"porte+de+clichy","Porte de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"mairie+de+clichy","Mairie de Clichy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"gabriel+peri","Gabriel-Peri");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"les+agnettes","Les Agnettes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,66,"asnieres+gennevilliers+les+courtilles","Asnieres-Gennevilliers Les Courtilles");

-- ### metros - 14(55098)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"saint+lazare","Saint-Lazare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"madeleine","Madeleine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"pyramides","Pyramides");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"chatelet","Chatelet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"gare+de+lyon","Gare de Lyon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"bercy","Bercy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"cour+saint+emilion","Cour Saint-Emilion");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"bibliotheque+francois+mitterrand","Bibliotheque-Francois Mitterrand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,55098,"olympiades","Olympiades");

-- ### metros - Fun(79)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,79,"funiculaire+gare+basse","Funiculaire Gare basse");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,79,"funiculaire+gare+haute","Funiculaire Gare haute");

-- ### metros - Orv(455)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,455,"antony","Antony");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,455,"orly+ouest","Orly-Ouest");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,2,455,"orly+sud","Orly-Sud");


-- #######################################################
-- #  tramways
-- #######################################################

INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (365923, 3,"11","Tramway T11","Le Bourget","Epinay-Sur-Seine");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (197891, 3,"1","Tramway T1","Les Courtilles","Noisy-Le-Sec RER");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (208996, 3,"2","Tramway T2","Porte de Versailles","Pont de Bezons");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (198721, 3,"3a","Tramway T3a","Porte de Vincennes","Pont Garigliano - Hopital Europeen George Pompidou");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (198717, 3,"3b","Tramway T3b","Porte de la Chapelle","Porte de Vincennes");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (39837, 3,"4","Tramway T4","Gare de Bondy","Gare d'Aulnay Sous Bois");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (216459, 3,"5","Tramway T5","Marche de Saint-Denis","Garges-Sarcelles RER");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (322861, 3,"6","Tramway T6","Viroflay - Rive Droite","Chatillon - Montrouge");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (224161, 3,"7","Tramway T7","Villejuif - Louis Aragon","Porte de l'Essonne");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (252615, 3,"8","Tramway T8","Epinay - Orgemont","Saint-Denis - Porte de Paris");
INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES (252614, 3,"8","Tramway T8","Villetaneuse-Universite","Saint-Denis - Porte de Paris");

-- ### tramways - 11(365923)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"epinay+sur+seine","Epinay-Sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"epinay+villetaneuse","Epinay-Villetaneuse");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"villetaneuse+universite","Villetaneuse-Universite");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"pierrefitte+stains","Pierrefitte-Stains");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"stains+la+cerisaie","Stains-La Cerisaie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"dugny+la+courneuve","Dugny-La Courneuve");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,365923,"le+bourget","Le Bourget");

-- ### tramways - 1(197891)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"noisy+le+sec+rer","Noisy-Le-Sec RER");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"petit+noisy","Petit Noisy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"pont+de+bondy","Pont de Bondy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"auguste+delaune","Auguste Delaune");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"jean+rostand","Jean Rostand");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"bobigny+++pablo+picasso","Bobigny - Pablo Picasso");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"hotel+de+ville+de+bobigny","Hotel de Ville de Bobigny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"liberation","Liberation");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"la+ferme","La Ferme");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"escadrille+normandie+niemen","Escadrille Normandie-Niemen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"gaston+roulaud","Gaston Roulaud");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"hopital+avicenne","Hopital Avicenne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"drancy+avenir","Drancy-Avenir");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"maurice+lachatre","Maurice Lachatre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"la+courneuve+++8+mai+1945","La Courneuve - 8 Mai 1945");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"danton","Danton");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"stade+geo+andre","Stade Geo Andre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"hotel+de+ville+de+la+courneuve","Hotel de Ville de la Courneuve");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"la+courneuve+++six+routes","La Courneuve - Six Routes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"cosmonautes","Cosmonautes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"hopital+delafontaine","Hopital Delafontaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"cimetiere+de+saint+denis","Cimetiere de Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"basilique+de+saint+denis","Basilique de Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"marche+de+saint+denis","Marche de Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"theatre+gerard+philipe","Theatre Gerard Philipe");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"gare+de+st+denis+rer","Gare de St-Denis RER");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"l'ile+saint+denis","L'Ile-Saint-Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"mairie+de+villeneuve+la+garenne","Mairie de Villeneuve-La Garenne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"la+noue","La Noue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"chemin+des+reniers","Chemin des Reniers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"parc+des+chanteraines","Parc des Chanteraines");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"gare+de+gennevilliers","Gare de Gennevilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"timbaud","Timbaud");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"le+village","Le Village");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"le+luth","Le Luth");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,197891,"les+courtilles","Les Courtilles");

-- ### tramways - 2(208996)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"pont+de+bezons","Pont de Bezons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"parc+pierre+lagravere","Parc Pierre Lagravere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"victor+basch","Victor Basch");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"jacqueline+auriol","Jacqueline Auriol");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"charlebourg","Charlebourg");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"les+fauvelles","Les Fauvelles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"faubourg+de+l'arche","Faubourg de l'Arche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"la+defense","La Defense");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"puteaux","Puteaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"belvedere","Belvedere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"suresnes+longchamp","Suresnes Longchamp");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"les+coteaux","Les Coteaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"les+milons","Les Milons");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"parc+de+st+cloud","Parc de St-Cloud");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"musee+de+sevres","Musee de Sevres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"brimborion","Brimborion");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"meudon+sur+seine","Meudon Sur-Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"les+moulineaux","Les Moulineaux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"jacques+henri+lartigue","Jacques-Henri Lartigue");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"issy+++val+de+seine","Issy - Val de Seine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"henri+farman","Henri Farman");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"suzanne+lenglen","Suzanne Lenglen");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"porte+d'issy","Porte d'Issy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,208996,"porte+de+versailles","Porte de Versailles");

-- ### tramways - 3a(198721)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"pont+garigliano+++hopital+europeen+george+pompidou","Pont Garigliano - Hopital Europeen George Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"balard","Balard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"desnouettes","Desnouettes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+de+versailles+++parc+des+expositions","Porte de Versailles - Parc des Expositions");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"georges+brassens","Georges Brassens");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"brancion","Brancion");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+de+vanves","Porte de Vanves");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"didot","Didot");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"jean+moulin","Jean Moulin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+d'orleans","Porte d'Orleans");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"montsouris","Montsouris");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"cite+universitaire","Cite Universitaire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"stade+charlety+++porte+de+gentilly","Stade Charlety - Porte de Gentilly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"poterne+des+peupliers","Poterne des Peupliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+d'italie","Porte d'Italie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+de+choisy","Porte de Choisy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+d'ivry","Porte d'Ivry");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"maryse+bastie","Maryse Bastie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"avenue+de+france","Avenue de France");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"baron+le+roy","Baron le Roy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+de+charenton","Porte de Charenton");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+doree","Porte Doree");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"montempoivre","Montempoivre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"alexandra+david+neel","Alexandra David-Neel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198721,"porte+de+vincennes","Porte de Vincennes");

-- ### tramways - 3b(198717)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+vincennes","Porte de Vincennes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+montreuil","Porte de Montreuil");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"marie+de+miribel","Marie de Miribel");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+bagnolet","Porte de Bagnolet");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"severine","Severine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"adrienne+bolland","Adrienne Bolland");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+des+lilas","Porte des Lilas");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"hopital+robert+debre","Hopital Robert Debre");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"butte+du+chapeau+rouge","Butte du Chapeau Rouge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+pantin+++parc+de+la+villette","Porte de Pantin - Parc de la Villette");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"delphine+seyrig","Delphine Seyrig");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"ella+fitzgerald+++grands+moulins+de+pantin","Ella Fitzgerald - Grands Moulins de Pantin");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+la+villette+++cite+des+sciences+et+de+l'industrie","Porte de la Villette - Cite des Sciences et de l'Industrie");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"canal+saint+denis","Canal Saint Denis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"rosa+parks","Rosa Parks");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+d'aubervilliers","Porte d'Aubervilliers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"colette+besson","Colette Besson");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,198717,"porte+de+la+chapelle","Porte de la Chapelle");

-- ### tramways - 4(39837)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+d'aulnay+sous+bois","Gare d'Aulnay Sous Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"rougemont+chanteloup","Rougemont Chanteloup");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+de+freinville+sevran","Gare de Freinville Sevran");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+de+l+abbaye","Gare de L Abbaye");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"lycee+henry+sellier","Lycee Henry Sellier");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+de+gargan","Gare de Gargan");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+des+pavillons+sous+bois","Gare des Pavillons Sous Bois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+d'allee+de+la+tour+rendez+vous","Gare d'Allee de la Tour Rendez Vous");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+des+coquetiers","Gare des Coquetiers");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"la+remise+a+jorelle","La Remise a Jorelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,39837,"gare+de+bondy","Gare de Bondy");

-- ### tramways - 5(216459)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"garges+sarcelles+rer","Garges-Sarcelles RER");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"locheres","Locheres");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"paul+valery","Paul Valery");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"les+flanades","Les Flanades");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"les+cholettes","Les Cholettes");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"butte+pinson+(parc+regional)","Butte Pinson (Parc Regional)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"jacques+prevert","Jacques Prevert");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"alcide+d'orbigny","Alcide d'Orbigny");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"mairie+de+pierrefitte","Mairie de Pierrefitte");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"suzanne+valadon","Suzanne Valadon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"joncherolles","Joncherolles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"petit+pierrefitte","Petit Pierrefitte");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"guynemer+(stade+auguste+delaune)","Guynemer (Stade Auguste Delaune)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"roger+semat","Roger Semat");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"baudelaire","Baudelaire");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,216459,"marche+de+saint+denis","Marche de Saint-Denis");

-- ### tramways - 6(322861)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"chatillon+++montrouge","Chatillon - Montrouge");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"vauban","Vauban");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"centre+de+chatillon","Centre de Chatillon");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"parc+andre+malraux","Parc Andre Malraux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"division+leclerc","Division Leclerc");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"soleil+levant","Soleil Levant");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"hopital+beclere","Hopital Beclere");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"mail+de+la+plaine","Mail de la Plaine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"pave+blanc+(parc+noveos)","Pave Blanc (Parc Noveos)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"georges+pompidou","Georges Pompidou");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"georges+millandy","Georges Millandy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"meudon+la+foret","Meudon-La-Foret");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"velizy+2","Velizy 2");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"dewoitine","Dewoitine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"inovel+parc+nord","Inovel Parc Nord");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"louvois","Louvois");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"mairie+de+velizy","Mairie de Velizy");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"l'onde+(maison+des+arts)","L'Onde (Maison des Arts)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"robert+wagner","Robert Wagner");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"viroflay+++rive+gauche","Viroflay - Rive Gauche");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,322861,"viroflay+++rive+droite","Viroflay - Rive Droite");

-- ### tramways - 7(224161)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"porte+de+l'essonne","Porte de l'Essonne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"aeroport+d'orly","Aeroport d'Orly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"coeur+d'orly","Coeur d'Orly");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"caroline+aigle+(orlyfret)","Caroline Aigle (Orlyfret)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"helene+boucher+(orlytech)","Helene Boucher (Orlytech)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"la+fraternelle","La Fraternelle");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"robert+schuman+(parc+silic+centre)","Robert Schuman (Parc Silic Centre)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"saarinen+(parc+silic+nord)","Saarinen (Parc Silic Nord)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"porte+de+rungis","Porte de Rungis");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"place+de+la+logistique+(plateforme+sogaris)","Place de la Logistique (Plateforme Sogaris)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"la+belle+epine","La Belle Epine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"porte+de+thiais+(marche+international)","Porte de Thiais (Marche International)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"auguste+perret+(cimetiere+parisien)","Auguste Perret (Cimetiere Parisien)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"bretagne","Bretagne");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"moulin+vert","Moulin Vert");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"domaine+cherioux","Domaine Cherioux");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"lamartine","Lamartine");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,224161,"villejuif+++louis+aragon","Villejuif - Louis Aragon");

-- ### tramways - 8(252615)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"saint+denis+++porte+de+paris","Saint-Denis - Porte de Paris");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"pierre+de+geyter","Pierre de Geyter");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"saint+denis+++gare","Saint-Denis - Gare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"paul+eluard","Paul Eluard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"delaunay+belleville","Delaunay-Belleville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"blumenthal","Blumenthal");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"les+mobiles","Les Mobiles");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"les+beatus","Les Beatus");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"rose+bertin+(centre+commercial+l'ilo)","Rose Bertin (Centre Commercial l'Ilo)");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"lacepede","Lacepede");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"gilbert+bonnemaison","Gilbert Bonnemaison");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"epinay+sur+seine+++gare","Epinay-Sur-Seine - Gare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252615,"epinay+++orgemont","Epinay - Orgemont");

-- ### tramways - 8(252614)
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"saint+denis+++porte+de+paris","Saint-Denis - Porte de Paris");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"pierre+de+geyter","Pierre de Geyter");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"saint+denis+++gare","Saint-Denis - Gare");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"paul+eluard","Paul Eluard");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"delaunay+belleville","Delaunay-Belleville");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"cesar","Cesar");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"jean+vilar","Jean Vilar");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"pablo+neruda","Pablo Neruda");
INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,3,252614,"villetaneuse+universite","Villetaneuse-Universite");







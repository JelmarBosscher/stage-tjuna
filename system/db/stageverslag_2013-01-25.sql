# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: stageverslag
# Generation Time: 2013-01-25 08:35:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `post` int(6) NOT NULL,
  `status` enum('pending','published','spam') NOT NULL,
  `date` int(11) NOT NULL,
  `name` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post` (`post`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `meta`;

CREATE TABLE `meta` (
  `key` varchar(140) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;

INSERT INTO `meta` (`key`, `value`)
VALUES
	('posts_page','3'),
	('home_page','3'),
	('twitter',''),
	('date_format','jS M, Y'),
	('auto_published_comments','0'),
	('posts_per_page','10'),
	('sitename','Jelmar Bosscher'),
	('description','Stageverslag Tjuna'),
	('theme','charoo');

/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `slug` varchar(150) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `status` enum('draft','published','archived') NOT NULL,
  `redirect` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `slug`, `name`, `title`, `content`, `status`, `redirect`)
VALUES
	(1,'jelmar','Over mij','Over mij','<img src=\"http://placekitten.com/g/780/370\" />','published',''),
	(2,'tjuna','Tjuna','A little bit about tjuna','<img src=\"http://placekitten.com/g/780/380\" />','published',''),
	(3,'projects','Projecten','De projecten waar ik aan heb gewerkt.','<p>Welcome!</p>','published',''),
	(12,'evaluatie','Evaluatie','Evaluatie','<img src=\"http://placekitten.com/g/780/330\" />','published',''),
	(13,'documenten','Documenten','Documenten','<img src=\"http://placekitten.com/g/780/310\" />','published','');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `html` text NOT NULL,
  `css` text NOT NULL,
  `js` text NOT NULL,
  `custom_fields` text,
  `created` int(11) NOT NULL,
  `author` int(6) NOT NULL,
  `status` enum('draft','published','archived') NOT NULL,
  `comments` tinyint(1) NOT NULL,
  `images` blob,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `html`, `css`, `js`, `custom_fields`, `created`, `author`, `status`, `comments`, `images`)
VALUES
	(10,'Groeigids','groeigids','<p>\r\nDe Groeigids van De GGD Amsterdam, had opgeroepen richting een aantal bedrijven om een nieuwe site te laten ontwerpen, zo kwam Tjuna met het idee om meer te doen dan alleen een website. </p>\r\n','<p>\r\nTjuna is samen met De GGD Amsterdam een project begonnen waarmee ze de Groeigids moderner en toegankelijker wouden maken. Vanuit Tjuna\'s idee om een een App te maken van de Groeigids hebben de twee bedrijven een geweldig concept bedacht.</p>\r\n\r\n<p>Groeigids GroeiPad is de manier om de groei van je kind bij te houden, met een groot aantal functies om een leuke ervaring voor de gebruiker te zijn. Een aantal voorbeelden zijn:<br>\r\n\r\n<ul>\r\n	<li>Een tijdlijn, met filter voor verschillende gebeurtenissen, zoals mijlpalen of vaccinaties.</li>\r\n	<li>De mogelijkheid om via de computer, mobiel of tablet gebeurtenissen toe te voegen.</li>\r\n	<li>Een gemakkelijk te gebruiken interface over alle platforms, en voor sommigen herkenbaar van Facebook, die sinds 2012 ook gebruik maakt van een Timeline weergave.</li>\r\n</ul>\r\n</p>\r\n\r\n<p> De app was al in ontwikkeling voordat ik bij Tjuna begon, alleen moest er nog een begin gemaakt worden aan de desktop site, hiervoor was ik aangewezen, de stijl van de App was al bepaald, en een aantal iconen. Mijn taak was om de site te ontwerpen voor zowel de Groeigids zelf, het informatieve gedeelte van de site en tevens de Groeipad webpagina.</p>\r\n\r\n<p>Voordat ik hier aan toe zou komen werd er door Bart ( Mede Stagiair - Interaction Designer ) een Wireframe opgezet, dit bleek achteraf een hele goede fase te zijn geweest. Het was namelijk zo dat de website ongeveer 2400 pagina\'s zou bevatten. Deze pagina\'s waren verdeelt onder 3 koppen waaronder weer verschillende subpagina\'s zaten. Dit ging wel to 5 lagen diep.<p>\r\n\r\n<h2>Wireframes</h2>\r\n\r\n<div class=\"clearfix\">\r\n<img style=\"width:50%; float:left;\" src=\"/assets/img/groeigids/wireframe/home.png\">\r\n<img style=\"width:50%; float:left;\" src=\"/assets/img/groeigids/wireframe/content.png\">\r\n<img style=\"width:50%; float:left;\" src=\"/assets/img/groeigids/wireframe/dashboard.png\">\r\n<img style=\"width:50%; float:left;\" src=\"/assets/img/groeigids/wireframe/groeipad.png\">\r\n</div>\r\n<h2>Creatie Fase</h2>\r\n<p>Vanuit die wireframes ben ik in photoshop gesprongen en ben ik de pagina\'s gaan ontwerpen.\r\nAls eerst een paar variaties gemaakt om zo de klant een richting te laten kiezen. Vincent ( Project Manager ) besprak dit met de klant en kwam bij mij met de ontvangen feedback. Direct maakte ik de nodige aanpassingen en kwamen we tot een stijl voor de website. </p>\r\n\r\n<img src=\"/assets/img/groeigids/design.png\">\r\n\r\n<p> Deze stijl werd goedgekeurd en ik ging aan de slag om de andere pagina\'s van de site te ontwerpen. Dit was een lang en intensief process, omdat ik tegen een aantal problemen opliep. Zo was de vooraf bedachte navigatie achteraf niet handig in gebruik.\r\nHier zijn we toen gelijk over gebogen en kwamen met een mooie oplossing.</p>\r\n\r\n<img style=\"width:33%; float:left\" src=\"/assets/img/groeigids/algemeen/startpagina.jpg\" > \r\n<img style=\"width:33%; float:left\" src=\"/assets/img/groeigids/algemeen/kinderwens.jpg\" > \r\n<img style=\"width:33%; float:left\" src=\"/assets/img/groeigids/algemeen/zwanger.jpg\" > \r\n<p> Zo was het design van de  <a href=\"http://www.groeigids.nl/\">Groeigids site</a> klaar en kon ik beginnen aan de <a href=\"http://www.groeigids.nl/persoonlijk\">Groeipad gedeelte.</a> </p>\r\n\r\n<h2> Het persoonlijke gedeelte - Groeipad </h2>\r\n\r\n<p> Na goedkeuring van het algemene gedeelte van de klant kon ik de stijl gaan verwerken in de Groeipad site, maar ook moest het voldoen aan de stijl van de app die al in ontwikkeling was.</p>\r\n\r\n<p>Ik heb goed gekeken naar de wireframes en de app om de juiste elementen over te nemen in de Groeipad website. Dit was achteraf nog een moeilijke klus, omdat bepaalde functies op een smartphone anders werken dan op een PC. Zo werk je op de PC met een muis en is de interactie daarom heel anders.</p>\r\n\r\n<p>Mijn eerste opzet was goed, wel zou er nog een aantal aanpassingen gedaan moeten worden aan verschillende functies. zo moest de filter zoals in de app verwerkt worden in de site maar ook de zelfde interactie moest behouden worden.</p>\r\n<div class=\"clearfix\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/groeipad/Groeigids-site-v2-personal.jpg\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/groeipad/1-kind.jpg\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/groeipad/alle-kinderen.jpg\">\r\n </div>\r\n<p> Na goedkeuring van Vincent ben ik alle Groeipad sub pagina\'s gaan maken. Hieronder vielen de instellingen pagina\'s en de toevoegen popups. Hieronder zie je een aantal voorbeelden.</p>\r\n\r\n<div class=\"clearfix\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/dashboard/dashboard-empty.jpg\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/dashboard/dashboard-filled.jpg\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/dashboard/instellingen.jpg\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/persoonlijk/dashboard/kind-toevoegen.jpg\">\r\n </div>\r\n \r\n<p> Na lange dagen met veel aanpassingen aan de designs is er uiteindelijk een punt achter gezet en zijn de front-enders en back-enders begonnen met het ontwikkelen van de site. Hieronder vind je de link naar de website.\r\n<a class=\"projectLink\" href=\"http://www.groeigids.nl\">Groeigids.nl</a></p>\r\n\r\n<h2>Groeigids mobiele website</h2>\r\n<p>Zo was de desktop site bijna afgerond en live gezet, toen kwam het verzoek of ik nog een design kon maken voor de mobiele versie van de site, vanuit de wireframes van Bart ben ik toen  begonnen aan de designs in photoshop. Hier hebben we gebruik gemaakt van de zelfde interacties als die in de GroeiApp.</p>\r\n\r\n<div class=\"clearfix\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/mobile/Groeigids-mobileSite-startpage.jpg\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/mobile/mob-onderwerp.jpg\">\r\n<img style=\"width:33%; float:left;\" src=\"/assets/img/groeigids/mobile/mob-onderwerp2-sub.jpg\">\r\n </div>\r\n\r\n<h1>Illustraties en afbeeldingen</h1>\r\n<p>De GroeiApp is natuurlijk een doorlopend project voor Tjuna waar continue aanpassingen en verbeteringen aan gedaan moeten worden. Voor het Groeipad moest er bijvoorbeeld grafieken gemaakt worden, in die grafieken moesten verschillende gegevens weergeven worden, zoals de lengte en gewicht, het gewicht per leeftijd, de lengte per leeftijd en dit moest ook nog verschillend per jongens en meisjes. Ook moest er een illustratie van het gebit komen waarop werd weergeven welke tanden zijn doorgekomen of gewisseld.</p>\r\n\r\n<div class=\"clearfix\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/gewicht-leeftijd-mannen.png\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/gewicht-lengte-mannen.png\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/lengte-leeftijd-21-mannen.png\">\r\n<img style=\"width:25%; float:left;\" src=\"/assets/img/groeigids/lengte-leeftijd-mannen.png\">\r\n<img style=\"width:100%; float:left;\" src=\"/assets/img/groeigids/gebit-mobframe-v7.png\">\r\n </div>\r\n','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/groeigids\\/groeigids-cover.jpg\"}}',1352693640,1,'published',0,NULL),
	(2,'Aficom','aficom','<p>Quisque aliquet imperdiet orci sed commodo.</p>\r\n\r\n','<p>Quisque aliquet imperdiet orci sed commodo. Sed lacinia sem ac mi imperdiet non gravida quam sollicitudin. Nunc sem nunc, dapibus aliquam elementum vitae, accumsan in lectus. Duis dapibus vestibulum velit. In sollicitudin libero et lectus pulvinar eu commodo diam tincidunt. Donec ligula sem, viverra vitae commodo vitae, consequat ac erat. In vitae velit est, ac accumsan dui.</p>\r\n\r\n<img src=\"http://placekitten.com/g/780/500\">\r\n\r\n<p>Quisque aliquet imperdiet orci sed commodo. Sed lacinia sem ac mi imperdiet non gravida quam sollicitudin. Nunc sem nunc, dapibus aliquam elementum vitae, accumsan in lectus. Duis dapibus vestibulum velit. In sollicitudin libero et lectus pulvinar eu commodo diam tincidunt. Donec ligula sem, viverra vitae commodo vitae, consequat ac erat. In vitae velit est, ac accumsan dui.</p>\r\n\r\n\r\n<img src=\"http://placekitten.com/g/780/400\">\r\n<blockquote> Jelmar cool </blockquote>','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/aficom\\/aficom-cover.jpg\"}}',1344748440,1,'published',1,NULL),
	(5,'Thunderwear','thunderwear','thunder','wear','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/thunderwear\\/thunderwear-cover.jpg\"}}',1357549020,1,'published',0,NULL),
	(12,'Tjuna Site / Huisstijl','tjuna-site','tjuna','site','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/tjuna\\/rebrand\\/images\\/3D-Logo-Mockup-Metallic-version.jpg\"}}',1358931420,1,'published',0,NULL),
	(7,'Robeco Infographic','robeco','<p>Tjuna werkt voor Robeco aan coole infographics, de tweede editie heb ik in elkaar gezet, hij werkt op een tablet, mobiel met touch en in alle browsers.\r\nHiervoor is er gebruikt gemaakt van Javascript en CSS.</p>','<p>Toen ik de opdracht ontving had ik het idee dat het moeilijk zou worden en veel tijd zou kosten.\r\nDaarna heb ik de <a href=\"http://www.rhbmdev.nl/robeco/\">eerste editie</a> bestudeerd en heb zo bedacht hoe ik dit het snelst op ging pakken.\r\nIk had de methode die gebruikt werd bij <a href=\"http://www.rhbmdev.nl/robeco/\">editie 1</a> al snel onder de knie, en mijn resultaat kan je <a href=\"/assets/img/robeco/robeco-euro-2013/test.html\" target=\"_blank\">hier</a> bekijken.</p>\r\n\r\n<img src=\"/assets/img/robeco/ROBECO-Euro-in-2013-jpg.jpg\" />','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/robeco\\/robeco-cover.jpg\"}}',1357549080,1,'published',0,NULL),
	(3,'Anne Frank Stichting','afs','<p>Quisque aliquet imperdiet orci sed commodo. Sed lacinia sem ac mi imperdiet non gravida quam sollicitudin. Nunc sem nunc, dapibus aliquam elementum vitae, accumsan in lectus. Duis dapibus vestibulum velit.</p>','<p>Quisque aliquet imperdiet orci sed commodo. Sed <a href=\"#\">lacinia sem ac mi imperdiet</a> non gravida quam sollicitudin. Nunc sem nunc, dapibus aliquam elementum vitae, accumsan in lectus. Duis dapibus vestibulum velit. In sollicitudin libero et lectus pulvinar eu commodo diam tincidunt. Donec ligula sem, viverra vitae commodo vitae, consequat ac erat. In vitae velit est, ac accumsan dui.</p>\r\n\r\n<img src=\"http://placekitten.com/g/780/500\">\r\n\r\n<p>Quisque aliquet imperdiet orci sed commodo. Sed lacinia sem ac mi imperdiet non gravida quam sollicitudin. Nunc sem nunc, dapibus aliquam elementum vitae, accumsan in lectus. Duis dapibus vestibulum velit. In sollicitudin libero et lectus pulvinar eu commodo diam tincidunt. Donec ligula sem, viverra vitae commodo vitae, consequat ac erat. In vitae velit est, ac accumsan dui.</p>\r\n\r\n<div class=\"image\">								\r\n	<img src=\"http://placekitten.com/g/780/400\" >\r\n	<span class=\"greyOut\"></span>\r\n</div>\r\n\r\n<img src=\"http://placekitten.com/g/780/400\">\r\n<blockquote> \"Slow food, Snel bezorgd!\" </blockquote>','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/afs\\/afs-cover.jpg\"},\"competenties\":{\"label\":\"competenties\",\"value\":\"b.2, b.5.5, a.1.2\"}}',1355478960,1,'published',0,NULL),
	(8,'Hotelmobile','hotelmobile','<p>Hotelmobile is een ander bedrijfje van de co-founders van Tjuna, het bied een product aan waarbij elk soort hotel zijn eigen app online kan krijgen op een snelle en voordelige manier.</p>','<p>Wanneer Lex van de Vliet ( co-founder Tjuna en Hotelmobile ) mij vroeg om naar de <a href=\"http://www.hotelmobile.net/en/\">Hotelmobile site</a> te kijken en mijn mening daarover wou horen, kwam hij ook met de vraag of ik de product pagina wou aanpakken. Zodoende ben ik aan de slag gegaan en ben ik online gaan kijken naar bestaande product pagina\'s van soort gelijke producten.</p>\r\n\r\n<p>Hotelmobile heeft zelf weinig concurrentie omdat ze een uniek concept aanbieden, wel zijn er andere bedrijfjes die zich richten op het Rapid App Building, waarbij ze klanten aanbieden een custom App snel en voordelig online te zetten.</p>\r\n\r\n<p>Ik ben na deze bom van inspiratie wezen schetsen en kwam zo op het idee om 3 use cases uit te lichten. Dit waren de hotel bezoekers, zoals de mensen die vooral komen voor de overnachting en zich verder vermaken buiten het hotel, maar ook de hotel bezoekers die zich binnen het hotel vermaken en de zakelijke gasten waarvoor er in het hotel meetings en conferenties mogelijk worden gemaakt. </p>\r\n\r\n<blockquote> \"Hotelmobile is a perfect tool to inform our guest before and during their stay.\" </blockquote> \r\n\r\n<p>Ik moest wel rekening houden dat de product pagina gericht was op hotel managers van verschillende soorten hotels.\r\nZo moet een luxe hotel in Amsterdam als een natuur hotel in Groningen het product aantrekkelijk vinden. Tevens zijn dit vaak zelf ook zakelijke mensen en hebben ze andere behoeftes als de doorsnee consument.<p>\r\n\r\n<p>Vanuit die belangrijke punten ben ik gaan werken. <a href=\"http://www.hotelmobile.net/en/product\" >En dit is het resultaat.</a></p>\r\n\r\n<div class=\"post-cover\"><img src=\"/assets/img/hotelmobile/Product-page-infograph.jpg\" ><span class=\"greyOut\"></span></div>','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/hotelmobile\\/hm-cover.jpg\"}}',1357549140,1,'published',0,NULL),
	(9,'Remy van Abbeve','rva','<p>\r\nRemy van Abbeve is een bekende van Tjuna en vroeg ons om een site te maken, hij zag de site van De Eetfabriek en vroeg of het de zelfde layout kon hebben. \r\n</p>\r\n\r\n','<p>\r\nIk ben aan de slag gegaan en heb zo een eigen sfeer aan de site gegeven die het zelfde is als het logo van Remy van Abbeve.\r\nNa mijn design fase zijn de andere stagiaires begonnen aan het bouwen van de website.\r\nEn hieronder zie je hoe dat is geworden.\r\n</p>\r\n\r\n\r\n<h2>Homepage</h2>\r\n<img src=\"/assets/img/rva/RvA-Home.png\" />\r\n<h2>Over Ons</h2>\r\n<img src=\"/assets/img/rva/RvA-Over-Ons.png\" /><h2>Showroom</h2>\r\n<img src=\"/assets/img/rva/RvA-Showroom.png\" />\r\n<h2>Contact</h2>\r\n<img src=\"/assets/img/rva/RvA-Contact.png\" />','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/rva\\/logo-abbeve.jpg\"}}',1357549140,1,'published',0,NULL),
	(4,'De Jongens','de-jongens','d','e','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/dejongens\\/dejongens-cover.jpg\"}}',1357549020,1,'published',0,NULL),
	(1,'Small Projects','small-projects','<p>\r\nEen kleine selectie van kleine opdrachten. Voor mij redelijk eenvoudige opdrachten waar weinig over te zeggen valt maar toch noemenswaardig zijn.\r\n</p>','<p><strong>Voorbeeld : </strong>Bovenaan zie je het document om de kleuren keuze voor de <a href=\"http://www.eetfabriek.com/\">eetfabriek website</a> te bepalen. Hierbij werd gevraagd of ik een kleuren combinatie kon maken voor de elementen op de website.</p>\r\n\r\n<h2> Hotel Arena Banner </h2>\r\n<img style=\" float:right; padding:10px;\" src=\"/assets/img/smallprojects/banner-animate-v8.gif\">\r\n<p>In de zelfde week was er het verzoek om een banner te maken voor <a href=\"http://www.hotelarena.nl/\">Hotel Arena</a>, de site zelf was al ontwikkeld door Tjuna voordat ik er stage kwam lopen.\r\nDe stijl in de banner is gebaseerd op de stijl van de \r\n<a href=\"http://www.hotelarena.nl/\">huidige website.</a>\r\n</p>\r\n\r\n<br/>\r\n<h2> Mensenrechten E-Mail template </h2>\r\n<p> Ook heb ik voor <a href=\"http://www.mensenrechten.nl/\">Mensenrechten</a> een <a href=\"/assets/img/smallprojects/index_7_final.html\">email template</a> ontwikkeld, hiervan werd het design aangeleverd en was mijn taak om dit op de juiste manier om te zetten naar HTML en CSS. Email templates in elkaar zetten is een vak apart omdat je geen nieuwe technieken kunt gebruiken maar alleen methodes uit de jaren 90.\r\nDit komt omdat er veel soorten mail-clients (e-mail software) zijn, en iedere mail-client heeft zijn eigen manier van het lezen van e-mails. Tevens proberen ze gevaarlijke en spam mail weg te houden doormiddel van algorithmes. Dus ik moest goed onderzoeken waar ik op moest letten en hier kwam mijn ervaring van mijn vorige stage goed van pas. U kunt de template <a href=\"/assets/img/smallprojects/index_7_final.html\">hier</a> online bekijken. </p>\r\n\r\n<div class=\"post-cover\"><img src=\"/assets/img/smallprojects/Email_Nwsbrf.png\" ><span class=\"greyOut\"></span></div>','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/smallprojects\\/page-kleuren.png\"}}',1357549560,1,'published',0,NULL),
	(11,'Slot Meesenstijn','meesenstijn','<p>Slot Meesenstijn is een kinderdag verblijf dat voorheen samen werkte met een ander kinderdag verblijf, nu deze splitsen vroeg Slot Meesenstijn aan Tjuna om een nieuwe site te maken, bij de splitsing kwam Slot Meesenstijn ook zonder logo te zitten, en daar kwam ik om de hoek kijken.</p>\r\n','<p>Mijn taak was om vanuit het aangeleverde plaatje een logo te bedenken<img style=\" float:right;\" src=\"/assets/img/meesenstijn/logo-idee.png\">, ik begon eerst met het omzetten van de afbeelding in Illustrator, hierdoor kon ik gemakkelijk aanpassingen doen aan vormen, kleuren en composities.</p>\r\n\r\n<p> Samen met Vincent (project manager) kozen we steeds een paar uit mijn creaties en begon ik vanuit die logo\'s verder te variëren.</p>\r\n\r\n<p> Na een aantal uiteenlopende symbolen en logo\'s hebben we een selectie gemaakt en in een <a href=\"/assets/img/meesenstijn/logoselectie.pdf\">PDF-document</a> gestopt. Zo kon Vincent de voorlopige logo suggesties gemakkelijk voorleggen aan de klant.</p>\r\n\r\n<p> Uiteindelijk nog voordat Vincent de klant gesproken had werd er besloten om nog wat andere varianten te maken en te selecteren, zo kwam ik op een wat simpeler idee voor een logo, wel lag dit verder af van het eerste concept waar de klant om vroeg. Ondanks deze verschillen dachten we toch dat we een aantal goede voorstellen hadden, waar de klant hopelijk tevreden mee zou zijn.</p>\r\n<a href=\"/assets/img/meesenstijn/meesentijn-logo-voorstellen.pdf\"><img src=\"/assets/img/meesenstijn/logo-voorstellen.png\"> </a>','','','{\"cover\":{\"label\":\"cover\",\"value\":\"\\/assets\\/img\\/meesenstijn\\/meesenstijn-cover.jpg\"}}',1358846460,1,'published',0,NULL);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` char(32) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  `ua` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`id`, `date`, `ip`, `ua`, `data`)
VALUES
	('lF9wLcDHvpAPAQedn1FeqkhE4Xrivrhz','2013-01-24 14:22:58','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17','a:3:{s:6:\"tokens\";a:2:{i:0;s:40:\"mGpUjvAx4uro3oF79ZLpYJl5cJVY24WTORvUQg1r\";i:1;s:40:\"f2ex2qOU66OeE3p2YKDzPwKrRUXWZaw8KYev0h0p\";}s:4:\"user\";O:8:\"stdClass\":8:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:13:\"hPmq9Nsz6vVIA\";s:5:\"email\";s:20:\"jelmarrr@hotmail.com\";s:9:\"real_name\";s:13:\"Administrator\";s:3:\"bio\";s:27:\"Default account for Anchor.\";s:6:\"status\";s:6:\"active\";s:4:\"role\";s:13:\"administrator\";}s:14:\"latest_version\";d:0.59999999999999997779553950749686919152736663818359375;}'),
	('S8Gmp9uF1KmcwPUbhWftukG4QEMIFbpZ','2013-01-25 08:32:58','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17','a:0:{}'),
	('yTHm6unZgWB4re5slJdBopu5hqAA4Pj5','2013-01-24 16:13:47','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17','a:1:{s:6:\"tokens\";a:1:{i:0;s:40:\"IlHSYWXz67XOwstfCfi9bkUWmG1oAkmh6fyN7q9k\";}}');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `real_name` varchar(140) NOT NULL,
  `bio` text NOT NULL,
  `status` enum('inactive','active') NOT NULL,
  `role` enum('administrator','editor','user') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `real_name`, `bio`, `status`, `role`)
VALUES
	(1,'admin','hPmq9Nsz6vVIA','jelmarrr@hotmail.com','Administrator','Default account for Anchor.','active','administrator');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

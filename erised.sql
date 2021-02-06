DROP TABLE Movies CASCADE CONSTRAINTS;
DROP TABLE Cinema_Halls CASCADE CONSTRAINTS;
DROP TABLE Reservations CASCADE CONSTRAINTS;
DROP TABLE Performances CASCADE CONSTRAINTS;
DROP TABLE Teams CASCADE CONSTRAINTS;
DROP TABLE Employees CASCADE CONSTRAINTS;

CREATE TABLE Movies (
IDm NUMBER(7) NOT NULL PRIMARY KEY,
title VARCHAR2(100) NOT NULL,
summary LONG,
director VARCHAR2(50),
year_of_release NUMBER(4) NOT NULL,
duration_in_minutes NUMBER(4) NOT NULL,
stars VARCHAR2(100)
);

CREATE TABLE Cinema_Halls (
number_of_hall NUMBER(1) NOT NULL PRIMARY KEY,
number_of_seats NUMBER(4) NOT NULL
);

CREATE TABLE Teams (
teamID NUMBER(2) NOT NULL PRIMARY KEY
);

CREATE TABLE Performances (
ID NUMBER(7) NOT NULL PRIMARY KEY,
date_of_performance DATE NOT NULL,
cost_of_one_ticket_in_dollars NUMBER(4) NOT NULL,
IDm NUMBER(7) REFERENCES Movies,
teamID NUMBER(7) REFERENCES Teams,
number_of_hall NUMBER(4) REFERENCES Cinema_Halls
);

CREATE TABLE Reservations (
IDr NUMBER(7) NOT NULL PRIMARY KEY,
number_of_tickets NUMBER(4) NOT NULL,
surname_of_client VARCHAR2(25) NOT NULL,
ID NUMBER(7) REFERENCES Performances
);

CREATE TABLE Employees (
PESEL NUMBER(11) NOT NULL PRIMARY KEY,
first_name VARCHAR2(25) NOT NULL,
surname VARCHAR2(25) NOT NULL,
gross_mouth_salary NUMBER(6) NOT NULL,
date_of_employment DATE NOT NULL,
teamID NUMBER(7) REFERENCES Teams
);

INSERT INTO Cinema_Halls VALUES (1, 70);
INSERT INTO Cinema_Halls VALUES (2, 60);
INSERT INTO Cinema_Halls VALUES (3, 80);
INSERT INTO Cinema_Halls VALUES (4, 30);
INSERT INTO Cinema_Halls VALUES (5, 90);
INSERT INTO Cinema_Halls VALUES (6, 40);
INSERT INTO Cinema_Halls VALUES (7, 77);

INSERT INTO Teams VALUES (1);
INSERT INTO Teams VALUES (2);
INSERT INTO Teams VALUES (3);
INSERT INTO Teams VALUES (4);
INSERT INTO Teams VALUES (5);
INSERT INTO Teams VALUES (6);
INSERT INTO Teams VALUES (7);

--This is a work of fiction.
--Names, characters, businesses, places, events, locales, and incidents are either the products of the author's imagination or used in a fictitious manner.
--Any resemblance to actual persons, living or dead, or actual events is purely coincidental.

INSERT INTO Employees VALUES (10000000000,'Daniel','Pizza',1000,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000001,'Adrian','Su',1200,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000002,'Alexander','Wurz',1500,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000003,'Bruno','Senna',1700,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000004,'Christian','Albers',2000,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000005,'Christijan','da Matta',2220,'12-MAR-2019',1);
INSERT INTO Employees VALUES (10000000006,'Cristian','Klient',1700,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000007,'Daniel','Coulthard',1770,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000008,'David','Ricciardo',2300,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000009,'Eddie','Irvine',1100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000010,'Felipe','Alonso',2100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000011,'Fernando','Mister',2100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000012,'Giancarlo','Fisichella',2100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000013,'Heikki','Frentzen',2100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000014,'Heinz-Harald','Kovalainen',2100,'21-MAR-2019',2);
INSERT INTO Employees VALUES (10000000015,'Jacques','Alesi',2100,'21-MAR-2019',3);
INSERT INTO Employees VALUES (10000000016,'Jaime','Alguersuari',2100,'21-MAR-2019',3);
INSERT INTO Employees VALUES (10000000017,'Jarno','Button',2100,'21-MAR-2019',3);
INSERT INTO Employees VALUES (10000000018,'Jean','Montoya',1800,'21-MAR-2019',3);
INSERT INTO Employees VALUES (10000000019,'Jean-Eric','Trulli',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000020,'Jenson','Vergne',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000021,'Jos','Verstappen',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000022,'Juan Pablo','Villeneuve',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000023,'Justin','Son',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000024,'Kamui','Kobayashi',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000025,'Kimi','Raikkonen',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000026,'Lewis','Hamilton',1800,'24-MAR-2019',3);
INSERT INTO Employees VALUES (10000000027,'Marc','Gravity',1600,'24-MAR-2019',4);
INSERT INTO Employees VALUES (10000000028,'Mark','Hakkinen',1600,'24-MAR-2019',4);
INSERT INTO Employees VALUES (10000000029,'Michael','Salo',1600,'24-MAR-2019',4);
INSERT INTO Employees VALUES (10000000030,'Mika','Schumacher',1600,'24-MAR-2019',5);
INSERT INTO Employees VALUES (10000000031,'Mika','Webber',1600,'24-MAR-2019',5);
INSERT INTO Employees VALUES (10000000032,'Narain','Heidfeld',1600,'24-MAR-2019',5);
INSERT INTO Employees VALUES (10000000033,'Nick','Hulkenberg',1600,'24-MAR-2019',5);
INSERT INTO Employees VALUES (10000000034,'Nico','Karthikeyan',1600,'24-MAR-2019',5);
INSERT INTO Employees VALUES (10000000035,'Nico','Rosberg',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000036,'Olivier','Panis',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000037,'Pastor','Rosa',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000038,'Patrick','di Resta',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000039,'Paul','Friesacher',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000040,'Pedro','Maldonado',1600,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000041,'Ralf','Barrichello',1900,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000042,'Ralph','Firman',1900,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000043,'Ricardo','Grosjean',1900,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000044,'Robert','Gajowy',1900,'30-MAR-2019',5);
INSERT INTO Employees VALUES (10000000045,'Romain','Schumacher',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000046,'Rubens','Zonta',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000047,'Sebastian','Bourdais',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000048,'Sebastien','Buemi',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000049,'Sebastien','Perez',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000050,'Sergio','Vettel',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000051,'Takuma','Glock',1900,'30-MAR-2019',6);
INSERT INTO Employees VALUES (10000000052,'Tiago','Monteiro',1900,'30-MAR-2019',7);
INSERT INTO Employees VALUES (10000000053,'Timo','Sato',1900,'30-MAR-2019',7);
INSERT INTO Employees VALUES (10000000054,'Vitaly','Liuzzi',1900,'30-MAR-2019',7);
INSERT INTO Employees VALUES (10000000055,'Vitantonio','Petrov',1900,'30-MAR-2019',7);
INSERT INTO Employees VALUES (10000000056,'Zsolt','Baumgartner',1900,'30-MAR-2019',7);

INSERT INTO Movies VALUES (1,'Guardians of the Galaxy','A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.','James Gunn',2014,121,'Chris Pratt, Vin Diesel, Bradley Cooper, Zoe Saldana');
INSERT INTO Movies VALUES (2,'Prometheus','Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone.','Ridley Scott',2012,124,'Noomi Rapace, Logan Marshall-Green, Michael Fassbender, Charlize Theron');
INSERT INTO Movies VALUES (3,'Split','Three girls are kidnapped by a man with a diagnosed 23 distinct personalities. They must try to escape before the apparent emergence of a frightful new 24th.','M. Night Shyamalan',2016,117,'James McAvoy, Anya Taylor-Joy, Haley Lu Richardson, Jessica Sula');
INSERT INTO Movies VALUES (4,'Sing','In a city of humanoid animals, a hustling theater impresario''s attempt to save his theater with a singing competition becomes grander than he anticipates even as its finalists'' find that their lives will never be the same.','Christophe Lourdelet',2016,108,'Matthew McConaughey, Reese Witherspoon, Seth MacFarlane, Scarlett Johansson');
INSERT INTO Movies VALUES (5,'Suicide Squad','A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.','David Ayer',2016,123,'Will Smith, Jared Leto, Margot Robbie, Viola Davis');
INSERT INTO Movies VALUES (6,'The Great Wall','European mercenaries searching for black powder become embroiled in the defense of the Great Wall of China against a horde of monstrous creatures.','Yimou Zhang',2016,103,'Matt Damon, Tian Jing, Willem Dafoe, Andy Lau');
INSERT INTO Movies VALUES (7,'La La Land','A jazz pianist falls for an aspiring actress in Los Angeles.','Damien Chazelle',2016,128,'Ryan Gosling, Emma Stone, Rosemarie DeWitt, J.K. Simmons');
INSERT INTO Movies VALUES (8,'Mindhorn','A has-been actor best known for playing the title character in the 1980s detective series "Mindhorn" must work with the police when a serial killer says that he will only speak with Detective Mindhorn, whom he believes to be a real person.','Sean Foley',2016,89,'Essie Davis, Andrea Riseborough, Julian Barratt, Kenneth Branagh');
INSERT INTO Movies VALUES (9,'The Lost City of Z','A true-life drama, centering on British explorer Col. Percival Fawcett, who disappeared while searching for a mysterious city in the Amazon in the 1920s.','James Gray',2016,141,'Charlie Hunnam, Robert Pattinson, Sienna Miller, Tom Holland');
INSERT INTO Movies VALUES (10,'Passengers','A spacecraft traveling to a distant colony planet and transporting thousands of people has a malfunction in its sleep chambers. As a result, two passengers are awakened 90 years early.','Morten Tyldum',2016,116,'Jennifer Lawrence, Chris Pratt, Michael Sheen, Laurence Fishburne');
INSERT INTO Movies VALUES (11,'Fantastic Beasts and Where to Find Them','The adventures of writer Newt Scamander in New York''s secret community of witches and wizards seventy years before Harry Potter reads his book in school.','David Yates',2016,133,'Eddie Redmayne, Katherine Waterston, Alison Sudol, Dan Fogler');
INSERT INTO Movies VALUES (12,'Rogue One','The Rebel Alliance makes a risky move to steal the plans for the Death Star, setting up the epic saga to follow.','Gareth Edwards',2016,133,'Felicity Jones, Diego Luna, Alan Tudyk, Donnie Yen');
INSERT INTO Movies VALUES (13,'Moana','In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches an impetuous Chieftain''s daughter''s island, she answers the Ocean''s call to seek out the Demigod to set things right.','Ron Clements',2016,107,'Auli''i Cravalho, Dwayne Johnson, Rachel House, Temuera Morrison');
INSERT INTO Movies VALUES (14,'Colossal','Gloria is an out-of-work party girl forced to leave her life in New York City, and move back home. When reports surface that a giant creature is destroying Seoul, she gradually comes to the realization that she is somehow connected to this phenomenon.','Nacho Vigalondo',2016,109,'Anne Hathaway, Jason Sudeikis, Austin Stowell, Tim Blake Nelson');
INSERT INTO Movies VALUES (15,'The Secret Life of Pets','The quiet life of a terrier named Max is upended when his owner takes in Duke, a stray whom Max instantly dislikes.','Chris Renaud',2016,87,'Louis C.K., Eric Stonestreet, Kevin Hart, Lake Bell');
INSERT INTO Movies VALUES (16,'Hacksaw Ridge','WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.','Mel Gibson',2016,139,'Andrew Garfield, Sam Worthington, Luke Bracey, Teresa Palmer');
INSERT INTO Movies VALUES (17,'Jason Bourne','The CIA''s most dangerous former operative is drawn out of hiding to uncover more explosive truths about his past.','Paul Greengrass',2016,123,'Matt Damon, Tommy Lee Jones, Alicia Vikander,Vincent Cassel');
INSERT INTO Movies VALUES (18,'Lion','A five-year-old Indian boy gets lost on the streets of Calcutta, thousands of kilometers from home. He survives many challenges before being adopted by a couple in Australia. 25 years later, he sets out to find his lost family.','Garth Davis',2016,118,'Dev Patel, Nicole Kidman, Rooney Mara, Sunny Pawar');
INSERT INTO Movies VALUES (19,'Arrival','When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.','Denis Villeneuve',2016,116,'Amy Adams, Jeremy Renner, Forest Whitaker, Michael Stuhlbarg');
INSERT INTO Movies VALUES (20,'Manchester by the Sea','A depressed uncle is asked to take care of his teenage nephew after the boy''s father dies.','Kenneth Lonergan',2016,137,'Casey Affleck, Michelle Williams, Kyle Chandler, Lucas Hedges');
INSERT INTO Movies VALUES (21,'Hounds of Love','A cold-blooded predatory couple while cruising the streets in search of their next victim, will stumble upon a 17-year-old high school girl, who will be sedated, abducted and chained in the strangers'' guest room.','Ben Young',2016,108,'Emma Booth, Ashleigh Cummings, Stephen Curry, Susie Porter');
INSERT INTO Movies VALUES (22,'Trolls','After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.','Walt Dohrn',2016,92,'Anna Kendrick, Justin Timberlake, Zooey Deschanel, Christopher Mintz-Plasse');
INSERT INTO Movies VALUES (23,'Independence Day: Resurgence','Two decades after the first Independence Day invasion, Earth is faced with a new extra-Solar threat. But will mankind''s new space defenses be enough?','Roland Emmerich',2016,120,'Liam Hemsworth, Jeff Goldblum, Bill Pullman, Maika Monroe');
INSERT INTO Movies VALUES (24,'Paris pieds nus','Fiona visits Paris for the first time to assist her myopic Aunt Martha. Catastrophes ensue, mainly involving Dom, a homeless man who has yet to have an emotion or thought he was afraid of expressing.','Dominique Abel',2016,83,'Fiona Gordon, Dominique Abel, Emmanuelle Riva, Pierre Richard');
INSERT INTO Movies VALUES (25,'Bahubali: The Beginning','In ancient India, an adventurous and daring man becomes involved in a decades old feud between two warring people.','S.S. Rajamouli',2015,159,'Prabhas, Rana Daggubati, Anushka Shetty, Tamannaah Bhatia');
INSERT INTO Movies VALUES (26,'Dead Awake','A young woman must save herself and her friends from an ancient evil that stalks its victims through the real-life phenomenon of sleep paralysis.','Phillip Guzman',2016,99,'Jocelin Donahue, Jesse Bradford, Jesse Borrego, Lori Petty');
INSERT INTO Movies VALUES (27,'Bad Moms','When three overworked and under-appreciated moms are pushed beyond their limits, they ditch their conventional responsibilities for a jolt of long overdue freedom, fun, and comedic self-indulgence.','Jon Lucas',2016,100,'Mila Kunis, Kathryn Hahn, Kristen Bell, Christina Applegate');
INSERT INTO Movies VALUES (28,'Assassin''s Creed','When Callum Lynch explores the memories of his ancestor Aguilar and gains the skills of a Master Assassin, he discovers he is a descendant of the secret Assassins society.','Justin Kurzel',2016,115,'Michael Fassbender, Marion Cotillard, Jeremy Irons, Brendan Gleeson');
INSERT INTO Movies VALUES (29,'Why Him?','A holiday gathering threatens to go off the rails when Ned Fleming realizes that his daughter''s Silicon Valley millionaire boyfriend is about to pop the question.','John Hamburg',2016,111,'Zoey Deutch, James Franco, Tangie Ambrose, Cedric the Entertainer');
INSERT INTO Movies VALUES (30,'Nocturnal Animals','A wealthy art gallery owner is haunted by her ex-husband''s novel, a violent thriller she interprets as a symbolic revenge tale.','Tom Ford',2016,116,'Amy Adams, Jake Gyllenhaal, Michael Shannon, Aaron Taylor-Johnson');
INSERT INTO Movies VALUES (31,'X-Men: Apocalypse','After the re-emergence of the world''s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.','Bryan Singer',2016,144,'James McAvoy, Michael Fassbender, Jennifer Lawrence, Nicholas Hoult');
INSERT INTO Movies VALUES (32,'Deadpool','A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.','Tim Miller',2016,108,'Ryan Reynolds, Morena Baccarin, T.J. Miller, Ed Skrein');
INSERT INTO Movies VALUES (33,'Resident Evil: The Final Chapter','Alice returns to where the nightmare began: The Hive in Raccoon City, where the Umbrella Corporation is gathering its forces for a final strike against the only remaining survivors of the apocalypse.','Paul W.S. Anderson',2016,107,'Milla Jovovich, Iain Glen, Ali Larter, Shawn Roberts');
INSERT INTO Movies VALUES (34,'Captain America: Civil War','Political interference in the Avengers'' activities causes a rift between former allies Captain America and Iron Man.','Anthony Russo',2016,147,'Chris Evans, Robert Downey Jr., Scarlett Johansson, Sebastian Stan');
INSERT INTO Movies VALUES (35,'Interstellar','A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.','Christopher Nolan',2014,169,'Matthew McConaughey, Anne Hathaway, Jessica Chastain, Mackenzie Foy');
INSERT INTO Movies VALUES (36,'Doctor Strange','While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.','Scott Derrickson',2016,115,'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong');
INSERT INTO Movies VALUES (37,'The Magnificent Seven','Seven gunmen in the old west gradually come together to help a poor village against savage thieves.','Antoine Fuqua',2016,132,'Denzel Washington, Chris Pratt, Ethan Hawke, Vincent D''Onofrio');
INSERT INTO Movies VALUES (38,'5- 25- 77','Alienated, hopeful-filmmaker Pat Johnson''s epic story growing up in rural Illinois, falling in love, and becoming the first fan of the movie that changed everything.','Patrick Read Johnson',2007,113,'John Francis Daley, Austin Pendleton, Colleen Camp, Neil Flynn');
INSERT INTO Movies VALUES (39,'Sausage Party','A sausage strives to discover the truth about his existence.','Greg Tiernan',2016,89,'Seth Rogen, Kristen Wiig, Jonah Hill, Alistair Abell');
INSERT INTO Movies VALUES (40,'Moonlight','A chronicle of the childhood, adolescence and burgeoning adulthood of a young, African-American, gay man growing up in a rough neighborhood of Miami.','Barry Jenkins',2016,111,'Mahershala Ali, Shariff Earp, Duan Sanderson, Alex R. Hibbert');

COMMIT;

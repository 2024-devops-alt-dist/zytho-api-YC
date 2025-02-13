INSERT INTO users (first_name, last_name, email, profile_pic, password, role)
VALUES
('Jean', 'Dupont', 'jean.dupont@example.com', 'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=600' ,'password123', 'user'),
('Marie', 'Durand', 'marie.durand@example.com', 'https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=600', 'password456', 'owner'),
('Eloïse', 'Pamplemousse', 'elo.dumont@example.com', 'https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=600', 'password456', 'owner'),
('Jean-Paul', 'Martin', 'pimprenelle @example.com', 'https://images.pexels.com/photos/18378690/pexels-photo-18378690/free-photo-of-traversier-du-vieux-quebec.jpeg?auto=compress&cs=tinysrgb&w=600', 'password789', 'owner'),
('Marguerite', 'Martin', 'paul.martin@example.com', 'https://images.pexels.com/photos/7959647/pexels-photo-7959647.jpeg?auto=compress&cs=tinysrgb&w=600', 'password789', 'user'),
('Mathieu', 'Vendredi', 'mat.dumont@example.com', 'https://images.pexels.com/photos/30227635/pexels-photo-30227635/free-photo-of-homme-elegant-avec-des-lunettes-de-soleil-et-un-gilet-a-l-exterieur.jpeg?auto=compress&cs=tinysrgb&w=600', 'password456', 'owner'),
('Sophie', 'Bernard', 'sophie.bernard@example.com', 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600', 'password321', 'user');

INSERT INTO breweries (name, country, region, description, address, picture_url, website_url, user_id)
VALUES
('La Brasserie du Mont', 'France', 'Alpes', 'Nichée au cœur des majestueuses montagnes alpines, la Brasserie du Mont est née de la passion commune de deux amis d’enfance, Éloïse et Mathieu. Grands amoureux de la nature et des traditions montagnardes, ils ont décidé de se lancer dans une aventure audacieuse : capturer l’essence des montagnes dans des bières uniques. Chaque recette est soigneusement élaborée pour refléter les saveurs et les senteurs de leur environnement naturel.', '10 Rue des Alpes, 74000 Annecy', 'https://images.pexels.com/photos/1267348/pexels-photo-1267348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'https://montbrewery.com', 3),
('Brasserie Étoilée', 'France', 'Île-de-France', 'Au cœur du tumulte parisien, la Brasserie Étoilée brille par son audace et son originalité. Fondée par Juliette, une artiste passionnée par l’alchimie des saveurs, cette brasserie se distingue par ses créations excentriques et résolument modernes. Inspirée par l’énergie de la capitale et les nuits étoilées qu’elle passait à rêver sur les toits de Montmartre, Juliette a imaginé des bières qui mêlent textures inattendues et ingrédients surprenants, tels que des infusions de fleurs ou des notes fruitées d’ailleurs. Chaque bouteille est une expérience sensorielle, un voyage à travers l’univers éclectique et vibrant de Paris.', '120 Rue des Lumières, 75015 Paris', 'https://images.pexels.com/photos/3009803/pexels-photo-3009803.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://etoileebrewery.com', 2),
('Brasserie Waale', 'France', 'Loire', 'Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher. Portland 90 scenester vexillologist forage post-ironic asymmetrical, chartreuse disrupt butcher paleo intelligentsia pabst before they sold out four loko. 3 wolf moon brooklyn.', '15 Avenue des Vins, 42000 Saint-Étienne', 'https://images.pexels.com/photos/1267361/pexels-photo-1267361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'https://loirebrewery.com', 1),
('Ratbeer', 'Belgique', 'Wallonie', 'Une brasserie produisant des bières à base de céréales locales. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher. Portland 90 paleo intelligentsia pabst before they sold out four loko. 3 wolf moon brooklyn.', '5 Rue des Champs, 5000 Namur', 'https://images.pexels.com/photos/1267349/pexels-photo-1267349.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://bierechamps.be', 2),
('Pimprenelle', 'France', 'Alsace', 'Dans un petit village pittoresque d’Alsace, La Pimprenelle est une brasserie familiale où l’art du brassage se transmet de génération en génération. Créée par les époux Marguerite et Jean-Paul, la brasserie puise son nom d’une plante sauvage qui pousse abondamment dans les prés voisins. Loin de l’agitation moderne, la famille se consacre à créer des bières authentiques, infusées des saveurs et des traditions alsaciennes. Les enfants, désormais impliqués dans l’entreprise, apportent leur touche de modernité tout en préservant l’héritage familial. Entre blondes légères, ambrées riches et bières épicées pour les fêtes, chaque gorgée raconte une histoire de terroir et de convivialité.', '25 Rue des Pins, 67000 Strasbourg', 'https://images.pexels.com/photos/3324442/pexels-photo-3324442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'https://foretbrewery.com', 4),
('Les Bières du Ventoux', 'France', 'Provence-Alpes-Côte d’Azur', 'Brasserie artisanale produisant des bières au pied du Mont Ventoux. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '12 Chemin des Vignes, 84110 Vaison-la-Romaine', 'https://images.pexels.com/photos/2440529/pexels-photo-2440529.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://ventouxbeers.com', 1),
('BrewIsle', 'France', 'Bretagne', 'Brasserie côtière spécialisée dans les bières iodées et fruitées. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '8 Quai de la Mer, 29200 Brest', 'https://images.pexels.com/photos/5529908/pexels-photo-5529908.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://ilesbrewery.com', 2),
('Le fût renversé', 'France', 'Normandie', 'Brasserie artisanale proposant des bières brassées à la main. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '18 Rue des Pommiers, 14000 Caen', 'https://images.pexels.com/photos/1267323/pexels-photo-1267323.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://atelierbiere.com', 2),
('Traditions du Nord', 'France', 'Hauts-de-France', 'Brasserie traditionnelle connue pour ses bières blondes et ambrées. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '10 Place de la Brasserie, 59000 Lille', 'https://images.pexels.com/photos/5530167/pexels-photo-5530167.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://brasserienord.com', 1),
('Bière des Montagnes', 'Suisse', 'Valais', 'Brasserie artisanale suisse avec des bières inspirées par les Alpes. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '22 Rue des Cimes, 1950 Sion', 'https://media.istockphoto.com/id/892115380/fr/photo/travailleur-de-sexe-masculin-op%C3%A9rer-de-la-machinerie-en-brasserie.jpg?s=2048x2048&w=is&k=20&c=SbNRaYF5nnFSkMd3UuReOBbTpChFZAq_tvFsQVS_wew=', 'https://montagnesbiere.ch', 2),
('La Houblonnière', 'Belgique', 'Flandre', 'Brasserie familiale avec un large choix de bières houblonnées. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '35 Rue des Houblons, 8000 Bruges', 'https://cdn.pixabay.com/photo/2017/06/23/17/41/beer-tap-2435389_640.jpg', 'https://houblonniere.be', 4),
('Fabriq de Saisons', 'France', 'Auvergne-Rhône-Alpes', 'Brasserie innovante créant des bières inspirées par les saisons. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '45 Rue des Quatre Saisons, 63000 Clermont-Ferrand', 'https://cdn.pixabay.com/photo/2015/06/18/01/10/barrels-813253_640.jpg', 'https://saisonsbrewery.com', 2),
('Bière de la Vallée', 'France', 'Occitanie', 'Brasserie artisanale avec des recettes utilisant des ingrédients locaux. Meggings portland fingerstache lyft, post-ironic fixie man bun banh mi umami everyday carry hexagon locavore direct trade art party. Locavore small batch listicle gastropub farm-to-table lumbersexual salvia messenger bag. Coloring book flannel truffaut craft beer drinking vinegar sartorial, disrupt fashion axe normcore meh butcher.', '50 Avenue de la Vallée, 31000 Toulouse', 'https://images.pexels.com/photos/30201967/pexels-photo-30201967/free-photo-of-rencontre-decontractee-dans-une-galerie-d-art-avec-boissons.jpeg?auto=compress&cs=tinysrgb&w=600', 'https://valleebrewery.com', 1);

INSERT INTO beers (name, price, description, color, abv, picture_url, production_date, brewery_id)
VALUES
('Blonde du Mont', 5, 'Bière blonde légère avec des arômes de fruits.', 'blonde', 5, 'https://images.pexels.com/photos/1089931/pexels-photo-1089931.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-03-01', 1),
('Ambrée de la Loire', 6, 'Bière ambrée au goût malté, légèrement sucrée.', 'ambrée', 6, 'https://images.pexels.com/photos/1552630/pexels-photo-1552630.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-04-15', 2),
('Noire des Champs', 7, 'Bière noire au goût riche et fort de café.', 'noire', 7, 'https://images.pexels.com/photos/7220289/pexels-photo-7220289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-02-10', 3),
('Trollette', 5.50, 'Une blonde douce avec des notes florales.', 'blonde', 4, 'https://images.pexels.com/photos/27623986/pexels-photo-27623986/free-photo-of-alcool-boire-biere-nature-morte.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-05-01', 1),
('Primus', 6.20, 'Une ambrée complexe aux arômes boisés.', 'ambrée', 5, 'https://images.pexels.com/photos/12034567/pexels-photo-12034567.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-03-12', 2),
('Triple d''Abbaye', 7.50, 'Bière triple avec une touche d''épices.', 'blonde', 8, 'https://images.pexels.com/photos/5537954/pexels-photo-5537954.jpeg?auto=compress&cs=tinysrgb&w=600', '2022-11-20', 3),
('IPA des Rivières', 6.80, 'Une IPA fruitée et bien houblonnée.', 'blonde', 6, 'https://images.pexels.com/photos/16925753/pexels-photo-16925753/free-photo-of-alcool-barre-bar-boire.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-01-15', 1),
('Castle', 5.30, 'Rafraîchissante avec des notes d''agrumes.', 'blonde', 4, 'https://images.pexels.com/photos/27623986/pexels-photo-27623986/free-photo-of-alcool-boire-biere-nature-morte.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-06-01', 2),
('Minuit Brute', 7.00, 'Bière brune intense aux saveurs de caramel.', 'brune', 6, 'https://images.pexels.com/photos/5659492/pexels-photo-5659492.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-03-05', 3),
('Porter du Nord', 7.20, 'Un porter robuste avec des touches de chocolat.', 'noire', 7, 'https://images.pexels.com/photos/2848681/pexels-photo-2848681.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-02-18', 1),
('Stout Impérial', 8.00, 'Un stout fort et complexe, aux notes de café et d''alcool.', 'noire', 9, 'https://images.pexels.com/photos/15109802/pexels-photo-15109802/free-photo-of-alcool-bouteilles-biere-concevoir.jpeg?auto=compress&cs=tinysrgb&w=600', '2022-12-10', 3),
('Moira Legend', 6.50, 'Une ambrée équilibrée aux saveurs de noix.', 'ambrée', 5, 'https://images.pexels.com/photos/24884128/pexels-photo-24884128/free-photo-of-alcool-bouteilles-boire-biere.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-02-28', 2),
('Blanche des Neiges', 5.20, 'Une blanche légère et acidulée.', 'blanche', 4, 'https://images.pexels.com/photos/22891898/pexels-photo-22891898/free-photo-of-restaurant-alcool-bouteilles-verre.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-01-25', 1),
('La Brumeuse', 5.80, 'Une bière blanche qui tape dans la tête et t’embrume le cerveau', 'blanche', 7.5, 'https://images.pexels.com/photos/1557686/pexels-photo-1557686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-03-15', 5),
('Cathédrale', 6.40, 'Elle t’en fait voir de toutes les couleurs. Une bière rousse légèrement sucrée, aux arômes de châtaigne et de miel.', 'ambrée', 6, 'https://images.pexels.com/photos/1267151/pexels-photo-1267151.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-09-30', 5),
('Nuit Sauvage', 8.50, 'Une bière triple aux épices, brassée avec du poivre de Sichuan et des écorces d’orange pour une explosion de saveurs.', 'ambrée', 9, 'https://images.pexels.com/photos/2899107/pexels-photo-2899107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-12-05', 5); 


INSERT INTO pictures (url, legend, beer_id)
VALUES
('https://example.com/beer1_pic1.jpg', 'Bière blonde du Mont', 1),
('https://example.com/beer2_pic1.jpg', 'Ambrée de la Loire', 2),
('https://example.com/beer3_pic1.jpg', 'Noire des Champs', 3),
('https://example.com/beer3_pic2.jpg', '', 3),
('https://example.com/beer3_pic3.jpg', '', 3),
('https://example.com/beer1_pic2.jpg', 'Bière blonde', 1);

INSERT INTO categories (name)
VALUES
('Lager'),
('Ale'),
('Pale ale'),
('Amber ale'),
('Indian pale ale'),
('Stout'),
('Wheat beer'),
('Porter'),
('Fruit beer'),
('Radler'),
('Honey beer'),
('Tripel'),
('IPA');

INSERT INTO beer_has_category (beer_id, category_id)
VALUES
(1, 1),
(2, 1),
(3, 6),
(4, 3),
(5, 4),
(6, 12),
(7, 4);

INSERT INTO ingredients (name, type)
VALUES
('Malt', 'Céréale'),
('Houblon', 'Plante'),
('Levure', 'Micro-organisme'),
('Eau', 'Liquide');

INSERT INTO beer_has_ingredient (beer_id, ingredient_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1); 

INSERT INTO reviews (text, rating, user_id, beer_id)
VALUES
('Très bonne bière, légère et rafraîchissante.', 4, 1, 1),
('Bière agréable, avec un goût malté bien présent.', 5, 2, 2),
('Bière assez forte, parfaite pour les amateurs de saveurs intenses.', 3, 3, 3),
('Très bonne bière!', 4, 3, 12),
('Un peu fade à mon goût...', 2, 3, 10),
('Pas mal.', 3, 2, 8),
('Un sacré goût de pisse.', 1, 1, 6);

INSERT INTO favorites (beer_id, user_id)
VALUES
(1, 1),
(2, 2),
(3, 4),
(5, 1),
(2, 1),
(1, 2);

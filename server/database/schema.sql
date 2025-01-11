CREATE TABLE user (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  passworduser VARCHAR(255) NOT NULL
);

CREATE TABLE item (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE category (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE program (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  synopsis text NOT NULL,
  poster VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  yearprogram INT,
  category_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO user (email, passworduser)
VALUES
  ("jdoe@mail.com", "123456");

INSERT INTO item (title, user_id)
VALUES
  ("Stuff", 1),
  ("Doodads", 1);

insert into category(id, name)
values
  (1, "Comédie"),
  (2, "Science-Fiction");

insert into program
  (
    id,
    title,
    synopsis,
    poster,
    country,
    yearprogram,
    category_id
  )
values
  (
    1,
    "The Good Place",
    "À sa mort, Eleanor Shellstrop est envoyée au Bon Endroit, un paradis fantaisiste réservé aux individus exceptionnellement bienveillants. Or Eleanor n'est pas exactement une « bonne personne » et comprend vite qu'il y a eu erreur sur la personne. Avec l'aide de Chidi, sa prétendue âme sœur dans l'au-delà, la jeune femme est bien décidée à se redécouvrir.",
    "https://img.betaseries.com/JwRqyGD3f9KvO_OlfIXHZUA3Ypw=/600x900/smart/https%3A%2F%2Fpictures.betaseries.com%2Ffonds%2Fposter%2F94857341d71c795c69b9e5b23c4bf3e7.jpg",
    "USA",
    2016,
    1
  ),
  (
    2,
    "Dark",
    "Quatre familles affolées par la disparition d'un enfant cherchent des réponses et tombent sur un mystère impliquant trois générations qui finit de les déstabiliser.",
    "https://img.betaseries.com/zDxfeFudy3HWjxa6J8QIED9iaVw=/600x900/smart/https%3A%2F%2Fpictures.betaseries.com%2Ffonds%2Fposter%2Fc47135385da176a87d0dd9177c5f6a41.jpg",
    "Allemagne",
    2017,
    2
  );

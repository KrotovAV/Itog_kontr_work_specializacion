-- 8. Создать таблицы с иерархией из диаграммы в БД
-- 9. Заполнить низкоуровневые таблицы именами(животных), командами
-- которые они выполняют и датами рождения

-- Создаем базу данных "humans_friends"
CREATE DATABASE `humans_friends`;

-- Используем созданную базу данных
USE `humans_friends`;

-- Создаем таблицу "animals"
CREATE TABLE `animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  animals_class VARCHAR(30)
);

-- Наполняем таблицу "animals"
INSERT INTO `humans_friends`.`animals` (`id`, `animals_class`) VALUES ('1', 'home'),('2', 'pack');

-- Просматриваем, проверяем "animals"
SELECT * FROM animals;

-- Создаем таблицу "dogs" с внешним ключом на таблицу "animals"
CREATE TABLE `dogs` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Наполняем таблицу "dogs"
INSERT INTO `humans_friends`.`dogs` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Fuell', 'not_trained', '2022-01-01', 1),
  ('Ser', 'trained', '2020-05-01', 1),
  ('Braik', 'super_trained', '2018-01-01', 1),
  ('Skail', 'trained', '2020-10-15', 1),
  ('Chans', 'super_trained', '2017-01-01', 1);
  
-- Просматриваем, проверяем "dogs"
SELECT * FROM dogs;

-- Создаем таблицу "cats" с внешним ключом на таблицу "animals"
CREATE TABLE `cats` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Наполняем таблицу "cats"
INSERT INTO `humans_friends`.`cats` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Pulp', 'not_trained', '2023-01-30', 1),
  ('Dog', 'not_trained', '2022-02-25', 1),
  ('Wall', 'not_trained', '2021-03-20', 1),
  ('Cube', 'super_trained', '2020-04-15', 1),
  ('Sheet', 'super_trained', '2019-05-10', 1);

-- Просматриваем, проверяем "cats"
SELECT * FROM cats;

-- Создаем таблицу "hamsters" с внешним ключом на таблицу "animals"
CREATE TABLE `hamsters` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Наполняем таблицу "hamsters"
INSERT INTO `humans_friends`.`hamsters` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Runner', 'not_trained', '2022-12-25', 1),
  ('Tunnel', 'not_trained', '2021-9-20', 1),
  ('Bridge', 'not_trained', '2020-6-15', 1),
  ('Deadend', 'not_trained', '2019-3-10', 1),
  ('Fork', 'super_trained', '2018-01-05', 1);
  
-- Просматриваем, проверяем "hamsters"
SELECT * FROM hamsters;

-- Создаем таблицу "horses" с внешним ключом на таблицу "animals"
CREATE TABLE `horses` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Наполняем таблицу "horses"
INSERT INTO `humans_friends`.`horses` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Starter', 'trained', '2023-12-25', 2),
  ('Jamper', 'super_trained', '2022-09-20', 2),
  ('Finisher', 'trained', '2021-06-15', 2),
  ('Slower', 'super_trained', '2020-03-10', 2),
  ('Dumper', 'super_trained', '2019-01-05', 2);
  
-- Просматриваем, проверяем "horses"
SELECT * FROM horses;

-- Создаем таблицу "camels" с внешним ключом на таблицу "animals"
CREATE TABLE `camels` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Заполняем таблицу "camels"
INSERT INTO `humans_friends`.`camels` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Sad', 'not_trained', '2023-12-25', 2),
  ('Tedious', 'super_trained', '2022-09-20', 2),
  ('Boring', 'super_trained', '2021-06-15', 2),
  ('Nerd', 'super_trained', '2020-03-10', 2),
  ('Lucky', 'super_trained', '2019-02-05', 2);

-- Просматриваем, проверяем "camels"
SELECT * FROM horses;

-- Создаем таблицу "donkeys" с внешним ключом на таблицу "animals"
CREATE TABLE `donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Наполняем таблицу "donkeys"
INSERT INTO `humans_friends`.`donkeys` (`name`, `possibilities`, `date`, `class_id`) VALUES
  ('Tooth', 'not_trained', '2023-12-25', 2),
  ('Claw', 'not_trained', '2022-12-20', 2),
  ('Eye', 'trained', '2021-06-15', 2),
  ('Nose', 'trained', '2020-03-10', 2),
  ('Ear', 'super_trained', '2019-01-05', 2);
  
-- Просматриваем, проверяем "donkeys"
SELECT * FROM donkeys;

-- 10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
-- питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.

-- Удаляем таблицу "camels"
DROP TABLE `humans_friends`.`camels`;

-- Создаем новую таблицу "horses_and_donkeys" для объединения "horses" и "donkeys"
CREATE TABLE `horses_and_donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  `source` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`)
);
  
 -- Вставляем данные из "horses" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'Horse' AS `source`
FROM `horses`;

-- Просматриваем, проверяем "horses_and_donkeys"
SELECT * FROM horses_and_donkeys;

 -- Вставляем данные из "donkeys" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'Donkey' AS `source`
FROM `donkeys`; 

-- Просматриваем, проверяем "horses_and_donkeys"
SELECT * FROM horses_and_donkeys;

-- 11.Создать новую таблицу “молодые животные” в которую попадут все
-- животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
-- до месяца подсчитать возраст животных в новой таблице

-- Создаем новую таблицу "young_animals"
CREATE TABLE `young_animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `source` VARCHAR(20) NOT NULL,
  `age_months` INT NOT NULL
);

-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `young_animals`
INSERT INTO `young_animals` (`name`, `source`, `age_months`)
SELECT `name`, 'Dog' AS `source`, TIMESTAMPDIFF(MONTH, `date`, CURDATE()) AS `age_months`
FROM `dogs`
WHERE `date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `source`, `age_months`)
SELECT `name`, 'Cat' AS `source`, TIMESTAMPDIFF(MONTH, `date`, CURDATE()) AS `age_months`
FROM `cats`
WHERE `date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `source`, `age_months`)
SELECT `name`, 'Donkey' AS `source`, TIMESTAMPDIFF(MONTH, `date`, CURDATE()) AS `age_months`
FROM `donkeys`
WHERE `date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `source`, `age_months`)
SELECT `name`, 'Hamster' AS `source`, TIMESTAMPDIFF(MONTH, `date`, CURDATE()) AS `age_months`
FROM `hamsters`
WHERE `date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `source`, `age_months`)
SELECT `name`, 'Horse' AS `source`, TIMESTAMPDIFF(MONTH, `date`, CURDATE()) AS `age_months`
FROM `horses`
WHERE `date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

-- Просматриваем, проверяем "young_animals"
SELECT * FROM young_animals;

-- 12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
-- прошлую принадлежность к старым таблицам.

-- Создаем новую таблицу "all_animals"
CREATE TABLE `all_animals` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `possibilities` VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  `class_id` INT UNSIGNED NOT NULL,
  `source` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `all_animals`
INSERT INTO `all_animals` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'dogs' AS `source`
FROM `dogs`;

INSERT INTO `all_animals` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'cats' AS `source`
FROM `cats`;

INSERT INTO `all_animals` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'donkeys' AS `source`
FROM `donkeys`;

INSERT INTO `all_animals` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'hamsters' AS `source`
FROM `hamsters`;

INSERT INTO `all_animals` (`name`, `possibilities`, `date`, `class_id`, `source`)
SELECT `name`, `possibilities`, `date`, `class_id`, 'horses' AS `source`
FROM `horses`;

-- Просматриваем, проверяем "all_animals"
SELECT * FROM all_animals;


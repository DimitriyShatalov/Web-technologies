-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения. Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

-- create
CREATE TABLE colleagues (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,   -- если необходимо, age может быть записан в формате INTEGER
  address TEXT NOT NULL
);

-- insert
INSERT INTO colleagues VALUES (0001, 'Irina', '18', 'Gomel');
INSERT INTO colleagues VALUES (0002, 'Dron', '28', 'Moscow');
INSERT INTO colleagues VALUES (0021, 'Petr', '32', 'Habarovsk');
INSERT INTO colleagues VALUES (0013, 'Anna', '28', 'Sochi');
INSERT INTO colleagues VALUES (0034, 'Denis', '28', 'Perm');
INSERT INTO colleagues VALUES (0011, 'Vadim', '29', 'Moscow');
INSERT INTO colleagues VALUES (0009, 'Habriel', '28', 'Gomel');
INSERT INTO colleagues VALUES (0007, 'Miron', '54', 'Moscow');
INSERT INTO colleagues VALUES (0003, 'Stas', '19', 'Minsk');
INSERT INTO colleagues VALUES (0012, 'Zamira', '28', 'Novosibirsk');

-- fetch 
SELECT name FROM colleagues WHERE address = 'Moscow' AND age >= 18 AND age < 30;

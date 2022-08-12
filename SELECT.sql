--название и год выхода альбомов, вышедших в 2018 году
SELECT album_name, album_date FROM album
WHERE album_date BETWEEN date '2018-01-01' AND date '2018-12-31';

SELECT album_name, album_date FROM album
WHERE album_date >= date '2018-01-01' AND album_date <= date '2018-12-31';

--название и продолжительность самого длительного трека
SELECT track_name, track_time FROM track
ORDER BY track_time DESC
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name, track_time FROM track
WHERE track_time >= time '00:03:30';

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compilation_name FROM compilation
WHERE compilation_year BETWEEN date '2018-01-01' AND date '2020-12-31';

--исполнители, чье имя состоит из 1 слова
SELECT executor_name FROM executor
WHERE executor_name NOT LIKE ('% %');

--название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM track
WHERE track_name LIKE '%My%';

SELECT track_name FROM track
WHERE track_name LIKE '%my%';

SELECT track_name FROM track
WHERE track_name LIKE '%мой%';

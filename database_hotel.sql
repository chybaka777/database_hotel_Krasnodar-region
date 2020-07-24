/*Данная БД была создана в тренировочных целях. Информация представленная в БД может отличаться от действительной и являться не полной.
 Часть информации была взята из офицльных интернет источников */
 

 CREATE DATABASE hotels_123_rus;
use hotels_123_rus;
create table city (id int not null primary key auto_increment, name varchar(25));
create table hotel (id_hotel int not null primary key auto_increment, id_city int not null, name_hotel varchar(25), address varchar(25), 
			 type_hotel varchar(25), 
             constraint city_hotel
             foreign key(id_city) references city(id) on delete cascade);
create table telephone (id_hotel int not null primary key, phone_number varchar (25),
			 constraint hotel_phone
             foreign key (id_hotel) references hotel(id_hotel) on delete cascade);
create table hotel_servise ( id_hotel int not null primary key, id_servise int not null, servise varchar(250),
			 constraint hotel_servise
             foreign key (id_hotel) references hotel(id_hotel) on delete cascade);
create table rooms ( id_hotel int not null, rooms varchar(250), price int,
			 constraint hotel_rooms
             foreign key (id_hotel) references hotel(id_hotel) on delete cascade);
              
ALTER TABLE hotel MODIFY address varchar(250);
ALTER TABLE hotel MODIFY name_hotel varchar(250);

/*////////////////////////////////////////////// ВНЕШНИЕ КЛЮЧИ //////////////////////////////*/

/*city_hotel
  hotel_phone
  hotel_servise
  hotel_rooms*/
  
/*///////////////////////////////////////////// ДОБАВЛЕНИЕ ДАННЫХ /////////////////////////////*/

INSERT INTO city (id, name)
		values ('1','Yesk'),
               ('2', 'Krasnodar'),
			   ('3', 'Sochi'),
			   ('4', 'Anapa');
    
insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (1, 1, 'TORNADO', 'ул.Пляжная,7/2', 'spa-hotel');
insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (2, 1, 'Каменка', 'ул.Шмидта,12', 'spa-hotel');
insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (3, 1, 'Волна 2', 'ул.Пляжная,2/33', 'spa-hotel'),
			   (4, 1, 'Морская 250', 'ул.Морская,250', 'spa-hotel'),
               (5, 1, 'Отдых 2', 'ул.Пионерская,2', 'spa-hotel'),
               (6, 1, 'Вавилон', 'ул.Пляжная,9/1', 'spa-hotel,'),
               (7, 1, 'Лилия 5', 'ул.Шмидта,42', 'spa-hotel'),
               (8, 1, 'Новинка 2', 'ул.Пляжная,1А', 'spa-hotel');
insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (9, 2, 'Марриотт', 'ул.Красная,120', 'business'),
               (10, 2, 'Триумф', 'ул.Промышленная,15', 'business'),
               (11, 2, 'Rimar Krasnodar', 'наб.Кубанская,44', 'business'),
               (12, 2, 'Grand SPA Hotel Avax', 'ул.Александра Покрышкина,25/1', 'spa-hotel'),
               (13, 2, 'Golden Tulip Krasnodar', 'ул.Суворова,91,', 'business'),
               (14, 2, 'Вилла Мартон', 'ул.Тихорецкая,45', 'spa-hotel'),
               (15, 2, 'Art Villa & SPA', 'ул.Леонида Лаврова,73', 'spa-hotel'),
               (16, 2, 'Marton Palace', 'ул.Мира,70', 'business'),
               (17, 2, 'Hilton Garden Inn Krasnodar', 'ул.Красная,25/2', 'business'),
               (18, 2, 'Forum Plaza', 'ул.Уральская,87', 'business'),
               (19, 2, 'Meliton', 'ул.Леваневского, 192', 'business'),
               (20, 2, 'Ibis',  'ул.Красноармейская,128,', 'business');
		insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (21, 3, 'Аура отель', 'ул.Декабристов,48/2', 'Пансион'),
			   (22, 3, 'La Familia', 'ул.Азовская,2', 'Мини-отель'),
               (23, 3, 'Жемчужина', 'ул.Черноморская,3', 'spa-hotel'),
               (24, 3, 'Чайка', 'ул.Виноградная,33/3', 'business'),
               (25, 3, 'Marina Yacht', 'ул.Несебрская,6', 'business'),
               (26, 3, 'Coocoorooza', 'ул.Волжская,76', 'business'),
               (27, 3, 'Максим Горький', 'ул. Горького, 39', 'Мини-отель'),
               (28, 3, 'АРТапарт', 'ул.Чайковского,34', 'Мини-отель'),
               (29, 3, 'Южный', 'ул.Летняя,15/2', 'spa-hotel'),
               (30, 3, 'Планета Спорт', 'ш.Батумское,57А', 'Дизайн-отель');
insert into hotel (id_hotel, id_city, name_hotel, address, type_hotel)
		values (31, 4, 'Alean Family Resort & SPA Doville', 'Пионерский просп,14', 'spa-hotel'),
			   (32, 4, 'Alean Family Resort & SPA Riviera', 'Пионерский просп,28', 'business'),
               (33, 4, 'Золотая Бухта Премиум', 'просп. Революции,11', 'Дизайн-отель'),
               (34, 4, 'Гранд Круиз', 'Пионерский просп,81Б', 'business'),
               (35, 4, 'Avdallini Golden Bay', 'Пионерский просп.,3Е', 'Мини-отель'),
               (36, 4, 'Лазурный Берег', 'Пионерский просп.,234', 'spa-hotel'),
               (37, 4, 'Адмирал', 'Кордонный пер.,1А,', 'Мини-отель'),
               (38, 4, 'Фантазия', 'Тополиный пр.,8', 'Мини-отель'),
               (39, 4, 'Пляж-отель Терраса', 'Пионерский просп.,21А', 'Мини-отель'),
               (40, 4, 'Luxury House', 'Тополиный пр.,4В', 'Мини-отель');
               

insert into telephone (id_hotel, phone_number)
		values (1,  '3-54-11');
insert into telephone (id_hotel, phone_number)
		values (2, '7-918-240-45-45');
insert into telephone (id_hotel, phone_number)
		values (3, '7-918-340-45-45'),
			   (4, '7-918-957-04-80'),
			   (5, '7-988-666-04-29'),
			   (6, '7-861-323-55-17'),
			   (7, '7-918-329-82-83'),
			   (8, '7-861-323-53-48');
insert into telephone (id_hotel, phone_number)
		values (9, '7-861-998-55-55'),
			   (10, '7-918-650-54-09'),
               (11, '7-861-279-79-59'),
               (12, '7-861-222-00-22'),
               (13, '8-800-250-33-33'),
               (14, '7-861-254-28-48'),
               (15, '7-918-600-50-40'),
               (16, '8-800-777-21-55'),
               (17, '7-861-210-20-30'),
               (18, '8-800-200-68-35'),
               (19, '7-928-442-32-22'),
               (20, '7-861-259-70-70');
insert into telephone (id_hotel, phone_number)
		values (21, '7-918-904-87-96'), 
			   (22, '7-962-882-10-50'), 
               (23, '8-800-200-12-88'), 
               (24, '7-862-233-60-50'), 
               (25, '7-862-444-44-77'), 
               (26, '7-938-869-69-96'), 
               (27, '7-988-414-75-48'), 
               (28, '7-900-133-50-00'), 
               (29, '7-862-233-73-70'), 
               (30, '7-918-202-20-19');
insert into telephone (id_hotel, phone_number)
		values (31, '8-800-250-00-30'),
			   (32, '8-800-250-00-30'),
               (33, '7-495-150-60-15'),
               (34, '8-800-707-80-75'),
               (35, '7-918-648-19-03'),
               (36, '8-800-775-20-80'),
               (37, '7-861-333-06-30'),
               (38, '7-989-268-85-88'),
               (39, '7-938-485-55-06'),
               (40, '7-918-642-55-50');
               
               
insert into hotel_servise (id_hotel, id_servise, servise)
		values (1, 1, 'Парковка'),
			   (2, 2, 'WI-fi' );
insert into hotel_servise (id_hotel, id_servise, servise)
		values (3, 1, 'Парковка'),
			   (4, 1, 'Парковка'),
               (5, 2, 'WI-fi'),
               (6, 2, 'WI-fi'),
               (7, 2, 'WI-fi'),
               (8, 2, 'WI-fi'),
               (9, 1, 'Парковка'),
               (10, 1, 'Парковка'),
               (11, 1, 'Парковка'),
               (12, 2, 'WI-fi'),
               (13, 2, 'WI-fi'),
               (14, 1, 'Парковка'),
               (15, 1, 'Парковка'),
               (16, 2, 'WI-fi'),
               (17, 1, 'Парковка'),
               (18, 2, 'WI-fi'),
               (19, 2, 'WI-fi'),
               (20, 1, 'Парковка');
insert into hotel_servise (id_hotel, id_servise, servise)
		values (21, 1, 'Парковка'),
			   (22, 1, 'Парковка'),
               (23, 2, 'WI-fi'),
               (24, 2, 'Парковка'),
               (25, 2, 'WI-fi'),
               (26, 2, 'WI-fi'),
               (27, 1, 'Парковка'),
               (28, 1, 'WI-fi'),
               (29, 1, 'Парковка'),
               (30, 1, 'Парковка');
               
insert into hotel_servise (id_hotel, id_servise, servise)
		values (31, 2, 'ПWI-fi'),
			   (32, 2, 'WI-fi'),
               (33, 1, 'Парковка'),
               (34, 2, 'WI-fi'),
               (35, 2, 'WI-fi'),
               (36, 1, 'Парковка'),
               (37, 2, 'WI-fi'),
               (38, 1, 'Парковка'),
               (39, 1, 'Парковка'),
               (40, 2, 'WI-fi');

        
        
insert into rooms ( id_hotel, rooms, price)
		values (1, 'Стандартный двухместный номер', 3000),
			   (1, 'Стандартный трехместный номер', 3500),
               (1, 'Четырехместный номер', 4000),
               (2, 'Стандартный одноместный номер', '3300'),
               (2, 'Стандартный двухместный номер', '3300'),
               (2, 'Стандартный трехместный номер', '4200'),
               (2, 'Четырехместный номер', '5500');
               
insert into rooms ( id_hotel, rooms, price)
		values (3, 'Стандартный одноместный номер', null ),
			   (3, 'Стандартный двухместный номер', null ),
			   (3, 'Стандартный трехместный номер', null ),
               (3, 'Четырехместный номер', null ),
               (4, 'Стандартный одноместный номер', 4000 ),
               (4, 'Стандартный двухместный номер', 4000 ),
               (4, 'Стандартный трехместный номер', 4900 ),
               (4, 'Четырехместный номер', 4900 ),
               (5, 'Стандартный одноместный номер', 1800 ),
               (5, 'Стандартный двухместный номер', 1800 ),
               (5, 'Стандартный трехместный номер', 4000 ),
               (5, 'Четырехместный номер', 4300),
               (6, 'Стандартный одноместный номер', 4650 ),
               (6, 'Стандартный двухместный номер', 4650),
               (6, 'Стандартный трехместный номер', 5150),
               (6, 'Четырехместный номер', 5450),
               (7, 'Стандартный одноместный номер', 2000),
               (7, 'Стандартный двухместный номер', 2700),
               (7, 'Стандартный трехместный номер',3300),
               (7, 'Четырехместный номер', 4100),
               (8, 'Стандартный одноместный номер', 3000 ),
               (8, 'Стандартный двухместный номер', 3000 ),
               (8, 'Стандартный трехместный номер', null ),
               (8, 'Четырехместный номер', null );
               
               
    insert into rooms ( id_hotel, rooms, price)
		values (9, 'Стандартный одноместный номер', 5600),
               (9, 'Стандартный двухместный номер', 5600),
               (9, 'Стандартный трехместный номер', null),
               (9, 'Четырехместный номер', null),
               (10, 'Стандартный одноместный номер', 2450),
               (10, 'Стандартный двухместный номер', 3500),
               (10, 'Стандартный трехместный номер', null),
               (10, 'Четырехместный номер', null),
               (11, 'Стандартный одноместный номер', 4000),
               (11, 'Стандартный двухместный номер', 5000),
               (11, 'Стандартный трехместный номер', null),
               (11, 'Четырехместный номер', null),
               (12, 'Стандартный одноместный номер', 3990),
               (12, 'Стандартный двухместный номер', 3990),
               (12, 'Стандартный трехместный номер', 8410),
               (12, 'Четырехместный номер',  6900),
               (13, 'Стандартный одноместный номер', 3900),
               (13, 'Стандартный двухместный номер', 3900),
               (13, 'Стандартный трехместный номер', null),
               (13, 'Четырехместный номер',  null),
               (14, 'Стандартный одноместный номер', 1352),
               (14, 'Стандартный двухместный номер', 1500),
               (14, 'Стандартный трехместный номер', null),
               (14, 'Четырехместный номер',  null),
               (15, 'Стандартный одноместный номер', 2400),
               (15, 'Стандартный двухместный номер', 2800),
               (15, 'Стандартный трехместный номер', 4200),
               (15, 'Четырехместный номер',  6100),
               (16, 'Стандартный одноместный номер', 3500),
               (16, 'Стандартный двухместный номер', 3500),
               (16, 'Стандартный трехместный номер', null),
               (16, 'Четырехместный номер', null ),
               (17, 'Стандартный одноместный номер', 3800),
               (17, 'Стандартный двухместный номер', 4800),
               (17, 'Стандартный трехместный номер', null),
               (17, 'Четырехместный номер',  null),
               (18, 'Стандартный одноместный номер', 2300),
               (18, 'Стандартный двухместный номер', 3300),
               (18, 'Стандартный трехместный номер', null),
               (18, 'Четырехместный номер',  null),
               (19, 'Стандартный одноместный номер', 1920),
               (19, 'Стандартный двухместный номер', 2400),
               (19, 'Стандартный трехместный номер', null ),
               (19, 'Четырехместный номер',  null),
               (20, 'Стандартный одноместный номер', 2650),
               (20, 'Стандартный двухместный номер', 2650),
               (20, 'Стандартный трехместный номер', null),
               (20, 'Четырехместный номер', null);
               
		insert into rooms ( id_hotel, rooms, price)
		values (21, 'Стандартный одноместный номер', 4500),
               (21, 'Стандартный двухместный номер', 6000),
               (21, 'Стандартный трехместный номер', 8100),
               (21, 'Четырехместный номер', null ),
               (22, 'Стандартный одноместный номер', 3950),
               (22, 'Стандартный двухместный номер', 3950),
               (22, 'Стандартный трехместный номер', 4938),
               (22, 'Четырехместный номер', null),
               (23, 'Стандартный одноместный номер', 10600),
               (23, 'Стандартный двухместный номер', 11700),
               (23, 'Стандартный трехместный номер', null),
               (23, 'Четырехместный номер', null),
               (24, 'Стандартный одноместный номер', 8200),
               (24, 'Стандартный двухместный номер', 9000),
               (24, 'Стандартный трехместный номер', null),
               (24, 'Четырехместный номер', null),
               (25, 'Стандартный одноместный номер', 7200),
               (25, 'Стандартный двухместный номер', 7200),
               (25, 'Стандартный трехместный номер', null),
               (25, 'Четырехместный номер', null),
               (26, 'Стандартный одноместный номер', 5300),
               (26, 'Стандартный двухместный номер', 5600),
               (26, 'Стандартный трехместный номер', 6600),
               (26, 'Четырехместный номер', null),
               (27, 'Стандартный одноместный номер', 2500),
               (27, 'Стандартный двухместный номер', 2500),
               (27, 'Стандартный трехместный номер', 4000),
               (27, 'Четырехместный номер', null),
               (28, 'Стандартный одноместный номер', 5600),
               (28, 'Стандартный двухместный номер', 5600),
               (28, 'Стандартный трехместный номер', 6200),
               (28, 'Четырехместный номер', 7200),
               (29, 'Стандартный одноместный номер', 2800),
               (29, 'Стандартный двухместный номер', 2800),
               (29, 'Стандартный трехместный номер', 3100),
               (29, 'Четырехместный номер', 7000),
               (30, 'Стандартный одноместный номер', 3000),
               (30, 'Стандартный двухместный номер', 3000),
               (30, 'Стандартный трехместный номер', 5500),
               (30, 'Четырехместный номер', 6000);
	  
      insert into rooms ( id_hotel, rooms, price)
		values (31, 'Стандартный одноместный номер', 20540),
               (31, 'Стандартный двухместный номер', 20540),
               (31, 'Стандартный трехместный номер', 30810),
               (31, 'Четырехместный номер',  30810),    
               (32, 'Стандартный одноместный номер', 15730),
               (32, 'Стандартный двухместный номер', 15730),
               (32, 'Стандартный трехместный номер', 20540),
               (32, 'Четырехместный номер',  20540),  
               (33, 'Стандартный одноместный номер',8000 ),
               (33, 'Стандартный двухместный номер',8000 ),
               (33, 'Стандартный трехместный номер', 16000),
               (33, 'Четырехместный номер', 16000),  
               (34, 'Стандартный одноместный номер',5900),
               (34, 'Стандартный двухместный номер', 5900),
               (34, 'Стандартный трехместный номер', null),
               (34, 'Четырехместный номер', null), 
               (35, 'Стандартный одноместный номер',4500),
               (35, 'Стандартный двухместный номер',5000),
               (35, 'Стандартный трехместный номер', null),
               (35, 'Четырехместный номер', null),  
               (36, 'Стандартный одноместный номер',7900 ),
               (36, 'Стандартный двухместный номер',10000),
               (36, 'Стандартный трехместный номер', 9000),
               (36, 'Четырехместный номер', null ),  
               (37, 'Стандартный одноместный номер',3500 ),
               (37, 'Стандартный двухместный номер', 3500),
               (37, 'Стандартный трехместный номер',5000 ),
               (37, 'Четырехместный номер', null ),  
               (38, 'Стандартный одноместный номер',3200 ),
               (38, 'Стандартный двухместный номер',3200 ),
               (38, 'Стандартный трехместный номер',3900 ),
               (38, 'Четырехместный номер',  4200),  
               (39, 'Стандартный одноместный номер',5000 ),
               (39, 'Стандартный двухместный номер',8000 ),
               (39, 'Стандартный трехместный номер',10000 ),
               (39, 'Четырехместный номер',10000  ),  
               (40, 'Стандартный одноместный номер', 3000),
               (40, 'Стандартный двухместный номер', 5000),
               (40, 'Стандартный трехместный номер',8000 ),
               (40, 'Четырехместный номер',8000  ); 
        
               
/*///////////////////////////// СОЗДАНИЕ ПРОЦЕДУР ///////////////*/

/*////////////////////////////// ИМЕНА ПРОЦЕДУР /////////////////////////////*/

/* call proced_1 - ЗАПУСК ОСНОВНОЙ ИНФОРМАЦИИ
   call proced_2 - СТОИМОСТЬ ПРОЖИВАНИЯ ЗА НЕДЕЛЮ
   call proced_3 - максимальная цена за номер в городе
   call proced_4 - минимальная цена за номер в городе
   call proced_5('Бюджетный вариант');  - Бюджетные номера до 2500р 
   call proced_5('Средний вариант');    -  Номера до 5500р
   call proced_5('LUX-Вариант');        -  Номера >5500р 
   
   ///////////////////////////////////////////////////////////////////////////*/
  
DELIMITER //
CREATE PROCEDURE proced_1 ()
	READS SQL DATA
      BEGIN
		Select name,
			   name_hotel,
			   address,
               phone_number,
               rooms,
               price from city join hotel
		on city.id=hotel.id_city join telephone
		on hotel.id_hotel=telephone.id_hotel join rooms
		on hotel.id_hotel=rooms.id_hotel
		where not price='null';
	  END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE proced_2 ()
	READS SQL DATA
      BEGIN
			SELECT name_hotel,
				   rooms,
				   price as 'Цена за 1 день',
				   (price*7) as 'Цена за 7 дней' from rooms join hotel
           on hotel.id_hotel=rooms.id_hotel
           where price is not null;
      END//
DELIMITER ;


DELIMITER //  
create procedure proced_3()
begin
	with trr as (select distinct name,
						name_hotel,
						rooms.rooms,
						max(price) as 'Максимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by name, rooms
				having rooms= 'Стандартный одноместный номер'
        union
				select distinct name,
						name_hotel, 
						rooms.rooms,
						max(price) as 'Максимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by name, rooms
				having rooms= 'Стандартный двухместный номер'
		union
				select distinct name,
						name_hotel,
						rooms.rooms,
						max(price) as 'Максимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by name, rooms
				having rooms= 'Стандартный трехместный номер'
		union
				select distinct name,
						name_hotel,
						rooms.rooms, 
						max(price) as 'Максимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by name, rooms
				having rooms= 'Четырехместный номер')
   select name,
		  name_hotel,
          rooms,
		  max(Максимальная_цена) as Макс_цена from trr 
          group by rooms, name
          order by name, Максимальная_цена;
END//
 DELIMITER ;
 

DELIMITER //  
create procedure proced_4()
begin
	with trr as (select distinct name,
						name_hotel,
						rooms.rooms,
						min(price) as 'Минимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by rooms, name
				having rooms= 'Стандартный одноместный номер'
        union
				select distinct name,
						name_hotel,
						rooms.rooms,
						min(price) as 'Минимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by rooms, name
				having rooms= 'Стандартный двухместный номер'
        union
				select distinct name,
						name_hotel,
						rooms.rooms,
						min(price) as 'Минимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by rooms, name
				having rooms= 'Стандартный трехместный номер'
        union
				select distinct name,
						name_hotel,
						rooms.rooms,
						min(price) as 'Минимальная_цена' from rooms join hotel
				on rooms. id_hotel= hotel.id_hotel join city 
				on hotel.id_city=city.id
				group by rooms, name
				having rooms= 'Четырехместный номер')
   select name,
		  name_hotel,
          rooms,
		  min(Минимальная_цена) as Мин_цена from trr 
          group by rooms, name
          order by name, Минимальная_цена;
END//
 DELIMITER ;

 DELIMITER //
	CREATE PROCEDURE proced_5( str varchar (45))
		BEGIN
			CASE str
			WHEN 'Бюджетный вариант'
			THEN select name, 
						name_hotel,
                        address,
                        rooms,
                        price from city join hotel 
				on city.id=hotel.id_city join telephone 
                on hotel.id_hotel=telephone.id_hotel join rooms
                on hotel.id_hotel=rooms.id_hotel 
                where rooms.price between 1000 and 2500;
			WHEN 'Средний вариант'
            THEN select name, 
						name_hotel,
                        address,
                        rooms, 
                        price from city join hotel 
				on city.id=hotel.id_city join telephone 
                on hotel.id_hotel=telephone.id_hotel join rooms
                on hotel.id_hotel=rooms.id_hotel 
                where rooms.price between 2500 and 5500;
			WHEN 'LUX-Вариант'
            THEN select name, 
						name_hotel,
                        address,
                        rooms, 
                        price from city join hotel 
				on city.id=hotel.id_city join telephone 
                on hotel.id_hotel=telephone.id_hotel join rooms
                on hotel.id_hotel=rooms.id_hotel 
                where rooms.price> 5500;
			END CASE;
		END//
  DELIMITER ;
  





/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/






  

     

    
 

     
     
     
	






alter table hotel_servise drop FOREIGN KEY hotel_servise;
alter table hotel add constraint city_hotel foreign key(id_city) references city(id) on delete cascade;



/*/////////////////////////////////////СПРАВКА////////////////////////////////////////////////////*/
/*alter table (имя таблицы) drop FOREIGN KEY (имя внешнего ключа)- УДАЛЕНИЕ ВНЕШНЕГО КЛЮЧА
alter table hotel drop FOREIGN KEY hotel_city; - ПОЛНЫЙ ПРИМЕР
alter table (имя таблицы) add constraint (имя нового внешнего ключа) foreign key (столбец 1й таблицы 'id_city') references (2 таблица (столбец 2 таблицы)) city(id) on delete cascade; - ДОБАВЛЕНИЕ ВНЕШНЕГО КЛЮЧА
alter table hotel add constraint city_hotel foreign key(id_city) references city(id) on delete cascade; - ПОЛНЫЙ ПРИМЕР
ALTER TABLE hotel MODIFY address varchar(250);- ИЗМЕНЕНИЕ ТИПА ДАННЫХ*/

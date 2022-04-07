create table People([Id] int primary key identity,[NAME] varchar(100), [LastName] varchar(100))
ALTER DATABASE School COLLATE Cyrillic_General_CI_AS;
INSERT People VALUES( 'Георгий', 'Исаев');
INSERT People VALUES( 'Дмитрий', 'Емельянов');
INSERT People VALUES( 'Алексей', 'Захаров');
INSERT People VALUES( 'Юрий', 'Лаврентьев');
INSERT People VALUES( 'Аркадий', 'Маслов');
INSERT People VALUES( 'Антон', 'Наумов');
INSERT People VALUES( 'Лаврентий', 'Фомичев');
INSERT People VALUES( 'Артём', 'Богданов');
INSERT People VALUES( 'Олег', 'Шаров');
INSERT People VALUES( 'Илья', 'Ширяев');
INSERT People VALUES( 'Василий', 'Гущин');
INSERT People VALUES( 'Лаврентий', 'Петров');
INSERT People VALUES( 'Роман', 'Алексеев');
INSERT People VALUES( 'Лаврентий', 'Лапин');
INSERT People VALUES( 'Валерий', 'Федотов');
INSERT People VALUES( 'Евгений', 'Харитонов');
INSERT People VALUES( 'Семён', 'Кулагин');
INSERT People VALUES( 'Игнатий', 'Крюков');
INSERT People VALUES( 'Михаил', 'Красильников');
INSERT People VALUES( 'Альберт', 'Кулагин');

create table Student([Id] int primary key identity,[Group] varchar(100),[PeopleId] int foreign key references People(Id))
INSERT Student VALUES( 'Комиссарова Сбыт', 12);
INSERT Student VALUES( 'Осипов Торг', 3);
INSERT Student VALUES( 'Панов Трейд', 18);
INSERT Student VALUES( 'Носов Пром', 15);
INSERT Student VALUES( 'Колобова Снаб', 8);
INSERT Student VALUES( 'Евсеев Пром', 6);
INSERT Student VALUES( 'Бурова Трейд', 16);
INSERT Student VALUES( 'Пахомова Пром', 7);
INSERT Student VALUES( 'Петухова Снаб', 3);
INSERT Student VALUES( 'Калашников Трейд', 19);

--select * from People
--drop table Student
--drop table People

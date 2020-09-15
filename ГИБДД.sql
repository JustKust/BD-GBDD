CREATE TABLE Должности
(
  Наименование_должности INT NOT NULL,
  Оклад INT NOT NULL,
  Обязанности INT NOT NULL,
  Код_должности INT NOT NULL,
  Требования INT NOT NULL,
  PRIMARY KEY (Код_должности)
);

CREATE TABLE звания
(
  Код_звания INT NOT NULL,
  наименование INT NOT NULL,
  надбавка INT NOT NULL,
  обязанности INT NOT NULL,
  требования INT NOT NULL,
  PRIMARY KEY (Код_звания)
);

CREATE TABLE марки_авто
(
  код_марки INT NOT NULL,
  наименование INT NOT NULL,
  фирма_произваодитель INT NOT NULL,
  страна_производитель INT NOT NULL,
  дата_начала_производства INT NOT NULL,
  дата_окончания_производства INT NOT NULL,
  характристики INT NOT NULL,
  категория INT NOT NULL,
  описание INT NOT NULL,
  PRIMARY KEY (код_марки)
);

CREATE TABLE водители
(
  код_водителя INT NOT NULL,
  ФИО INT NOT NULL,
  Дата_рождения INT NOT NULL,
  адрес INT NOT NULL,
  паспортные_данные INT NOT NULL,
  номер_водительского_удостоверения INT NOT NULL,
  дата_выдачи_удостоверения INT NOT NULL,
  дата_окончания_удостоверения INT NOT NULL,
  категория_удостоверения INT NOT NULL,
  описание INT NOT NULL,
  код_сотрудника INT NOT NULL,
  PRIMARY KEY (код_водителя),
  UNIQUE (паспортные_данные),
  UNIQUE (номер_водительского_удостоверения)
);

CREATE TABLE Сотрудники
(
  Код_сотрудника INT NOT NULL,
  ФИО INT NOT NULL,
  Возраст INT NOT NULL,
  Пол INT NOT NULL,
  Адрес INT NOT NULL,
  Телефон INT NOT NULL,
  Паспортные_данные INT NOT NULL,
  Код_должности INT NOT NULL,
  Код_звания INT NOT NULL,
  PRIMARY KEY (Код_сотрудника),
  FOREIGN KEY (Код_должности) REFERENCES Должности(Код_должности),
  FOREIGN KEY (Код_звания) REFERENCES звания(Код_звания),
  UNIQUE (Паспортные_данные)
);

CREATE TABLE автомобили
(
  код_автомобиля INT NOT NULL,
  регистрационный_номер INT NOT NULL,
  номер_кузова INT NOT NULL,
  номер_двигателя INT NOT NULL,
  номер_техпаспорта INT NOT NULL,
  дата_выпуска INT NOT NULL,
  дата_регистрации INT NOT NULL,
  цвет INT NOT NULL,
  технический_осмотр INT NOT NULL,
  дата_технического_осмотра INT NOT NULL,
  описание INT NOT NULL,
  код_марки INT NOT NULL,
  Код_сотрудника INT NOT NULL,
  код_водителя INT NOT NULL,
  PRIMARY KEY (код_автомобиля),
  FOREIGN KEY (код_марки) REFERENCES марки_авто(код_марки),
  FOREIGN KEY (Код_сотрудника) REFERENCES Сотрудники(Код_сотрудника),
  FOREIGN KEY (код_водителя) REFERENCES водители(код_водителя),
  UNIQUE (номер_кузова),
  UNIQUE (номер_двигателя)
);

CREATE TABLE автомобили_в_угоне
(
  дата_угона INT NOT NULL,
  дата_обращения INT NOT NULL,
  обстоятельства_угона INT NOT NULL,
  отметка_об_нахождении INT NOT NULL,
  дата_нахождения INT NOT NULL,
  код_сотрудника INT NOT NULL,
  код_автомобиля INT NOT NULL,
  код_водителя INT NOT NULL,
  FOREIGN KEY (код_автомобиля) REFERENCES автомобили(код_автомобиля),
  FOREIGN KEY (код_водителя) REFERENCES водители(код_водителя)
);
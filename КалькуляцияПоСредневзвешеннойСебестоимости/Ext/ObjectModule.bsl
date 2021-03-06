﻿
///////////////////////////////////////////////////////////////////////////////
// РЕГИСТРАЦИЯ ВНЕШНЕЙ ОБРАБОТКИ 

Функция СведенияОВнешнейОбработке() Экспорт

	ПараметрыРегистрации = Новый Структура;
	МассивНазначений = Новый Массив;
	МассивНазначений.Добавить("");

	ПараметрыРегистрации.Вставить("Вид", 			 "ДополнительнаяОбработка");
	ПараметрыРегистрации.Вставить("Назначение", 	 МассивНазначений);
	ПараметрыРегистрации.Вставить("Наименование", 	 "Калькуляция по средневзвешенной себестоимости");
	ПараметрыРегистрации.Вставить("Версия", 		 "1.0");
	ПараметрыРегистрации.Вставить("БезопасныйРежим", Ложь);
	ПараметрыРегистрации.Вставить("Информация", 	 "Калькуляция по средневзвешенной себестоимости");

	ТаблицаКоманд = ПолучитьТаблицуКоманд();
	НовСтрока = ТаблицаКоманд.Добавить();
	НовСтрока.Идентификатор = "ОткрытьОбработку";
	НовСтрока.Использование = "ОткрытиеФормы";
	НовСтрока.Представление = "Калькуляция по средневзвешенной себестоимости";	

	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);

	Возврат ПараметрыРегистрации;
	
КонецФункции

Функция ПолучитьТаблицуКоманд()
	
	Команды = Новый ТаблицаЗначений;
	Команды.Колонки.Добавить("Представление", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("Идентификатор", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("Использование", Новый ОписаниеТипов("Строка"));
	Команды.Колонки.Добавить("ПоказыватьОповещение", Новый ОписаниеТипов("Булево"));
	Команды.Колонки.Добавить("Модификатор", Новый ОписаниеТипов("Строка"));

	Возврат Команды;

КонецФункции

Процедура ДобавитьКоманду(ТаблицаКоманд, Представление, Идентификатор, Использование, ПоказыватьОповещение = Ложь, Модификатор = "")
	
	НоваяКоманда = ТаблицаКоманд.Добавить();
	НоваяКоманда.Представление = Представление;
	НоваяКоманда.Идентификатор = Идентификатор;
	НоваяКоманда.Использование = Использование;
	НоваяКоманда.ПоказыватьОповещение = ПоказыватьОповещение;
	НоваяКоманда.Модификатор = Модификатор;
	
КонецПроцедуры

# encoding: utf-8
# language: ru

Функционал: Проверка открытия обработки "Канбан доска "

Как Пользователь
Я хочу Открывать обработку "Канбан доска" при наличии не предопределенных элементов справочника "Статусы задачи"
Чтобы Работать с задачами

Контекст: 
	Допустим я удаляю задачу с именем "Тестовая111" из справочника "узСтатусыЗадачи"
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание тестового статуса задачи и открытие обработки "Канбан доска" 

	Когда В панели разделов я выбираю "Управление задачами"
	И     В панели функций я выбираю "Статусы задачи"
	Тогда открылось окно "Статусы задачи"
	И     я нажимаю на кнопку "Создать"
	Тогда открылось окно "Статусы задачи (создание)"
	И     в поле "Наименование" я ввожу текст "Тестовая111"
	И     я открываю выпадающий список "Вид статуса"
	И     из выпадающего списка "Вид статуса" я выбираю "Backlog"
	И     я изменяю флаг "Видимость по умолчанию"
	И     я нажимаю на кнопку "Записать и закрыть"
	И     Я нажимаю кнопку командного интерфейса "Меню функций (F10)"
	И     В панели функций я выбираю "Канбан доска"
	Тогда открылось окно "Канбан доска"
	И 	  В панели разделов я выбираю "Управление задачами"
	И     В панели функций я выбираю "Статусы задачи"
	Тогда открылось окно "Статусы задачи"
	И     В форме "Статусы задачи" в таблице "Список" я перехожу к строке:
	| 'Наименование' | 'Вид статуса' |
	| 'Тестовая111'  | 'Backlog'     |

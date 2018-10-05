desc "create test data for DB"
task install_artisles: :environment do
	puts "cleaning up all data"
	Article.delete_all
	puts "add 3 artisles"
	Article.create(title: "Как начать писать на Ruby on Rails: настройка окру...", lang_id: 2, short_article: "Компьютерное программирование — это то, что можно ...", body: "Ruby и Rails\r\nRails настолько тесно связан с самим...", author: "Eugene Kuznietsov")
	Article.create(title: "Путівник галактикою Ruby", lang_id: 2, short_article: "Витримки з матеріалів про RoR", body: "Світ Ruby\r\nЮкіхіро «Matz» Мацумото, автор і головн...", author: "Володимир Воробйов")
	Article.create(title: "Советы сеньоров: как прокачать знания junior Ruby", lang_id: 2, short_article: "Советы сеньоров — постоянная рубрика, в которой оп...", body: "Елена Моргун, Ruby Team Leader в Rails Reactor\r\n10...", author: "Редакция DOU")
end

desc "create test data for DB"
task install_news: :environment do
	puts "cleaning up all data"
	News.delete_all
	Language.delete_all
	puts "add 3 news"
	language = Language.create
	News.create(title: "Разногласия между разработчиками могут привести к неработоспособности ядра Linux", body: "Изменения в новой версии документа Code of Conduct (CoC) привели к угрозам со стороны некоторых разработчиков ядра Linux принять радикальные меры. Каждый отстранённый от проекта разработчик сможет удалить внесённые изменения, сделав ОС уязвимой к атакам злоумышленников. Глобально это может привести к сбоям в работе большого количества ресурсов.", author: "tproger.ru", short_news: "Разногласия между разработчиками могут привести к неработоспособности ядра Linux", lang_id: language.id, publish_date: "25/09/2018")
	News.create(title: "Adobe представила Intelligent Alerts, ИИ-помощника для Analytics", body: "Adobe добавила виртуального помощника с поддержкой искусственного интеллекта в Adobe Analytics — Intelligent Alerts. Он предлагает пользователю новые данные, с которыми тот, вероятно, еще не сталкивался. Это должно сделать анализ материала более глубоким.", author: "tproger.ru", short_news: "Adobe представила Intelligent Alerts, ИИ-помощника для Analytics", lang_id: language.id, publish_date: "25/09/2018")
	News.create(title: "GitHub пригласила пользователей принять участие в пятом Hacktoberfest", body: "GitHub опубликовала в блоге анонс пятого ежегодного события Hacktoberfest. Ресурс проводит мероприятие совместно с DigitalOcean и Twilio. Основной целью является развитие движения Open Source, а также привлечение в него новых людей. Hacktoberfest пройдёт 1–31 октября 2018 года. Подробности участия можно прочитать на сайте события. Первые 50 тысяч участников, выполнившие 5 удачных pull-запросов для любых проектов в указанный временной период, получат футболку ограниченной серии. Более подробная информация появится позже.", author: "tproger.ru", short_news: "GitHub пригласила пользователей принять участие в пятом Hacktoberfest", lang_id: language.id, publish_date: "25/09/2018")
end

desc "create test data for DB"
task install_events: :environment do
	puts "cleaning up all data"
	City.delete_all
	Status.delete_all
	Language.delete_all
	StatusLanguage.delete_all
	CityLanguage.delete_all
	EventLanguage.delete_all
	Event.delete_all

	puts "add 3 event"
	city = City.create
	done_status = Status.create(id: 3)
	status = Status.create(id: 4)
	language = Language.create
	CityLanguage.create(title: "Kyiv", lang_id: language.id, city_id: city.id)
	StatusLanguage.create(title: "done", status_id: done_status.id, lang_id: language.id)
	event1 = Event.create(status_id: done_status.id, city_id: city.id, start_date: "22/11/2018", end_date: "05/12/2018", duration: "3 week")
	StatusLanguage.create(title: "do", status_id: done_status.id, lang_id: language.id)
	EventLanguage.create(title: "Курс - Javascript Advanced", short_event: "Oсобенности работы с конструкциями JavaScript", body: "Студенты урок за уроком изучают семантику и особенности работы с конструкциями JavaScript. Каждый урок насыщен как теорией, так и практикой. В конце каждого занятия студенты получают домашние задания, которые помогают им закрепить материал. Курс охватывает все возможности языка программирования JavaScript. Курс ориентирован на комплексное и глубокое изучение возможностей языка программирования JavaScript. Он будет интересен тем программистам, которые уже имеют опыт работы с языком JavaScript. Программа обучения состоит из 10-ти уроков, на протяжении которых детально рассматриваются принципы работы с объектами, документами, css, событиями, формами, Cookies, работа с графикой.", author: "edu.cbsystematics.com", event_id: event1.id, lang_id: language.id)
	event2 = Event.create(status_id: status.id, city_id: city.id, start_date: "05/10/2018", end_date: "05/10/2018", duration: "1.5 hours")
	StatusLanguage.create(title: "do", status_id: status.id, lang_id: language.id)
	EventLanguage.create(title: "Как стать программистом?", short_event: "Что такое IT?", body: "Что такое IT? О программировании простыми словами. Продуктовые и аутсорсинговые компании-гиганты и разные уровни заработной платы. Прикладные и системные программисты. Какими качествами и знаниями должен владеть программист? Сложно ли найти работу программистом? Какую специальность выбрать и как это сделать? Ответы на вопросы.", author: "edu.cbsystematics.com", event_id: event2.id, lang_id: language.id)
	event3 = Event.create(status_id: status.id, city_id: city.id, start_date: "10/10/2018", end_date: "10/10/2018", duration: "1.5 hours")
	EventLanguage.create(title: "Как стать Front-End разработчиком?", short_event: "Ввод в курс как стать Front-End разработчиком?", body: "Что такое Front-Еnd разработка? Чем занимается Front-Еnd разработчик? Какие знания, умения и навыки нужны Front-Еnd разработчику? С чего начать свое обучение? Составление плана обучения. Рекомендуемая литература и материалы. Практические примеры использования технологий HTML5&CSS3. Практические примеры использования языка программирования JavaScript. Ответы на вопросы.", author: "edu.cbsystematics.com", event_id: event3.id, lang_id: language.id)
end






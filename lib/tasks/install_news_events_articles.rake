#namespace :setup do
	desc "create test data for DB"
	task install_artisles: :environment do
		puts "cleaning up all data"
		Article.delete_all
		puts "add 3 artisles"
		Article.create(title: "Как начать писать на Ruby on Rails: настройка окру...", lang_id: 2, short_article: "Компьютерное программирование — это то, что можно ...", body: "Ruby и Rails\r\nRails настолько тесно связан с самим...", author: "Eugene Kuznietsov")
		Article.create(title: "Путівник галактикою Ruby", lang_id: 2, short_article: "Витримки з матеріалів про RoR", body: "Світ Ruby\r\nЮкіхіро «Matz» Мацумото, автор і головн...", author: "Володимир Воробйов")
		Article.create(title: "Советы сеньоров: как прокачать знания junior Ruby", lang_id: 2, short_article: "Советы сеньоров — постоянная рубрика, в которой оп...", body: "Елена Моргун, Ruby Team Leader в Rails Reactor\r\n10...", author: "Редакция DOU")
	end

	task install_news: :environment do
		puts "cleaning up all data"
		News.delete_all
		puts "add 3 news"
		News.create(title: "Разногласия между разработчиками могут привести к неработоспособности ядра Linux", body: "Изменения в новой версии документа Code of Conduct (CoC) привели к угрозам со стороны некоторых разработчиков ядра Linux принять радикальные меры. Каждый отстранённый от проекта разработчик сможет удалить внесённые изменения, сделав ОС уязвимой к атакам злоумышленников. Глобально это может привести к сбоям в работе большого количества ресурсов.", author: "tproger.ru", short_news: "Разногласия между разработчиками могут привести к неработоспособности ядра Linux", lang_id: 1, publish_date: "25/09/2018")
		News.create(title: "Adobe представила Intelligent Alerts, ИИ-помощника для Analytics", body: "Adobe добавила виртуального помощника с поддержкой искусственного интеллекта в Adobe Analytics — Intelligent Alerts. Он предлагает пользователю новые данные, с которыми тот, вероятно, еще не сталкивался. Это должно сделать анализ материала более глубоким.", author: "tproger.ru", short_news: "Adobe представила Intelligent Alerts, ИИ-помощника для Analytics", lang_id: 1, publish_date: "25/09/2018")
		News.create(title: "GitHub пригласила пользователей принять участие в пятом Hacktoberfest", body: "GitHub опубликовала в блоге анонс пятого ежегодного события Hacktoberfest. Ресурс проводит мероприятие совместно с DigitalOcean и Twilio. Основной целью является развитие движения Open Source, а также привлечение в него новых людей. Hacktoberfest пройдёт 1–31 октября 2018 года. Подробности участия можно прочитать на сайте события. Первые 50 тысяч участников, выполнившие 5 удачных pull-запросов для любых проектов в указанный временной период, получат футболку ограниченной серии. Более подробная информация появится позже.", author: "tproger.ru", short_news: "GitHub пригласила пользователей принять участие в пятом Hacktoberfest", lang_id: 1, publish_date: "25/09/2018") 
	end

	task install_events: :environment do
		puts "cleaning up all data"
		StatusLanguage.delete_all
		CityLanguage.delete_all
		Event.delete_all
		puts "add 3 event"
		City.delete_all
		Status.delete_all
		Language.delete_all
		StatusLanguage.create(title: "ІТ Arena 2018", status_id: 1, lang_id: 1)
		CityLanguage.create(title: "Kyiv", lang_id: 1, city_id: 1)
		Event.create(status_id: 1, city_id: 1, start_date: "01/10/2018", end_date: "16/11/2018", duration: "1.5 month")
		Event.create(status_id: 2, city_id: 2, start_date: "21/09/2018", end_date: "21/09/2018", duration: "2 hours")
		Event.create(status_id: 3, city_id: 3, start_date: "01/11/2018", end_date: "01/12/2018", duration: "1 month")
		City.create
		Status.create
		Language.create
		# def status_languages; "0" ; end
		# def city_languages; "1"; end
		# binding.pry

#		status_languages = "0"
#		city_languages = "1"
	end

#end
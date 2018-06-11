# Task 2

# encoding: utf-8

def AmountOfDays(day, month, year)
	# Получим номер месяца по введенному месяцу
 	case month
 		when 'января'
 			monthnumber = 1
		when 'февраля'
			monthnumber = 2
		when 'марта'
			monthnumber = 3
		when 'апреля'
			monthnumber = 4
		when 'мая'
			monthnumber = 5
		when 'июня'
			monthnumber = 6
		when 'июля'
			monthnumber = 7
		when 'августа'
			monthnumber = 8
		when 'сентября'
			monthnumber = 9
		when 'октября'
			monthnumber = 10
		when 'ноября'
			monthnumber = 11
		when 'декабря'
			monthnumber = 12
 	else
 		return 'Неправильно введен месяц'
	end

	#	Создадим новый объект типа дата
	dateobj = Time.mktime(year, monthnumber, day)
	#	Определяем порядковый номер введенного дня в году
	datenumb = dateobj.yday
	#	Проверка: является ли год високосным (определяет общее количество дней в году)
	if LeapOfYear(year)
		daystoNY = 366 - datenumb
	else
		daystoNY = 365 - datenumb
	end

end

def LeapOfYear(year)
	if year%400 == 0
		true
	elsif year%100 == 0
		false
	elsif year%4 == 0
		true
	else
		false
	end
end

puts AmountOfDays(ARGV[0].to_i, ARGV[1].encode('utf-8'), ARGV[2].to_i), "\n"

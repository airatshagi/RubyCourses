# Task 3

def TimeInterval(t1, t2)
  # Общий интервал в секундах
  interval = t1 + t2

  # Разделение временного интервала
  seconds = interval % 60
  interval /= 60
  minutes = interval % 60
  interval /= 60
  hours = interval % 24
  interval /= 24
  days = interval

  # Роспись временного интервала
  strinterval = ''

  strdays = (days !=0 ? days.to_s + ' ' + TimeInWords(days, 'д', 'ень', 'ня', 'ней') + ' ' : '')
  strhours = (hours !=0 ? hours.to_s + ' ' + TimeInWords(hours, 'час', '', 'а', 'ов') + ' ' : '')
  strminutes = (minutes !=0 ? minutes.to_s + ' ' + TimeInWords(minutes, 'минут', 'а', 'ы', '') + ' ' : '')
  strseconds = (seconds !=0 ? seconds.to_s + ' ' + TimeInWords(seconds, 'секунд', 'а', 'ы', '') + ' ' : '')

  strinterval = strdays + strhours + strminutes + strseconds

end

  # Метод для склонения прописных величин
  # chislo - склоняемое число
  # kor - корень слова - неизменная часть слова
  # a1 - окончание слова, если число заканчивается на 1
  # a2 - окончание слова, если число заканчивается на 2, 3, 4
  # a3 - окончание слова, если число заканчивается на 0, 5-9, 11-19

def TimeInWords(chislo, kor, a1, a2, a3)
  okonch = chislo % 100
  if (okonch > 10 && okonch < 21)
    return kor + a3
  end
  okonch = chislo % 10
  if (okonch == 0 || okonch > 4)
    return kor + a3
  elsif (okonch == 1)
    return kor + a1
  elsif (okonch < 5)
    return kor + a2
  end
end

puts TimeInterval(ARGV[0].to_i, ARGV[1].to_i)
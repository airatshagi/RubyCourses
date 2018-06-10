# Task 1

def Palindrom(strvvod)
	str1 = strvvod.gsub(/[^\p{L}\s\d]/,'')
	str1.gsub!(/\s/, '')
	str2 = str1.clone
	str1.reverse!
	if str1.casecmp?(str2)
		"YES"
	else
		"NO"
	end
end

puts Palindrom(ARGV[0]), "\n"
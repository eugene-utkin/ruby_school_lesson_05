# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

arr = []

while true
print "\nВведите ваш любимый цвет (или stop для выхода): "
x = gets.strip.upcase

if x == "STOP"
   puts arr.reverse
   exit
else

check = arr.include? (x.downcase.capitalize)
	if check == true
		print "Такой цвет уже есть в списке"
	else
		arr << x.downcase.capitalize
	end
end
end
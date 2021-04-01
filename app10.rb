# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

arr = %w[Саша Маша Коля Петя Семён Александра Марина Лох Ксюша]

while true

x = 1

arr.each do |name|
     puts "#{x} - #{name}"
	x = x + 1
end

puts "Введите номер ученика, которого хотите удалить."

n = gets.to_i

print n

arr.delete_at n-1

puts "Теперь список такой: "
puts arr
end
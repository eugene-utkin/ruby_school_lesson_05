# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

@list = []

def add_items
	info = []
	puts "\nКого добавить в список?"

	x = gets.strip.capitalize

	if x == ""
		exit
	end

	info << x



	puts "Введите возраст."

	y = gets.strip.capitalize

	if y == ""
		exit
	end

	info << y

	info

end

def display_items
@list.each do |name, age|
        puts "#{@num} - #{name}. Возраст: #{age}."
        @num = @num + 1
end
end

def remove_items
   	puts "\nВведите номер для удаления: "
	del = gets.to_i
	@list.delete_at del - 1
	puts
	@list
end

loop do




puts "\nЧто делаем?"
puts "1 - Добавить имя в список."
puts "2 - Удалить имя из списка."

choice = gets.to_i

if choice == 1

	@list << add_items

	@num = 1

	puts

	display_items

	puts 

elsif choice == 2
	if @list == []
		puts "\nСписок пуст. Удалять нечего."
	else    
		@num = 1
		puts	
		display_items
        	remove_items

		if @list == []
			puts "\nСписок пуст!"
		else
			@num = 1
			puts
			display_items
		end
	end
else
	puts "\nНекорректный ввод. Попробуйте снова."
end

end
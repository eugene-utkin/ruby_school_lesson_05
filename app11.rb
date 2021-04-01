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
	puts "\n���� �������� � ������?"

	x = gets.strip.capitalize

	if x == ""
		exit
	end

	info << x



	puts "������� �������."

	y = gets.strip.capitalize

	if y == ""
		exit
	end

	info << y

	info

end

def display_items
@list.each do |name, age|
        puts "#{@num} - #{name}. �������: #{age}."
        @num = @num + 1
end
end

def remove_items
   	puts "\n������� ����� ��� ��������: "
	del = gets.to_i
	@list.delete_at del - 1
	puts
	@list
end

loop do




puts "\n��� ������?"
puts "1 - �������� ��� � ������."
puts "2 - ������� ��� �� ������."

choice = gets.to_i

if choice == 1

	@list << add_items

	@num = 1

	puts

	display_items

	puts 

elsif choice == 2
	if @list == []
		puts "\n������ ����. ������� ������."
	else    
		@num = 1
		puts	
		display_items
        	remove_items

		if @list == []
			puts "\n������ ����!"
		else
			@num = 1
			puts
			display_items
		end
	end
else
	puts "\n������������ ����. ���������� �����."
end

end
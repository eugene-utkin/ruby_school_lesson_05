# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

def get_command
	x = rand(1..4)
	if x == 1
        	cmd = :left
	

	elsif x == 2
        	cmd = :right
	

	elsif x == 3
        	cmd = :up
	

	else x == 4
        	cmd = :down
	end
	cmd
end

command = get_command


puts "Получена команда: #{command}"

if command == :left
	puts "Робот едет влево"


elsif command == :right
        puts "Робот едет вправо"


elsif command == :up
        puts "Робот едет вверх"


else command == :down
        puts "Робот едет вниз"
end
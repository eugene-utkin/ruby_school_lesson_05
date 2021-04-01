# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end


while true

def get_command
	actions = [:left, :right, :up, :down]
	x = actions[rand(0..3)]
	x
end

puts "Нажмите Enter для случайного действия!"
gets

cmd = get_command

puts "Получена команда: #{cmd}."

end

# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

people = %w[walt hank jr jessie lidia]
1.upto(5) do |i|
puts "#{i} - #{people[i-1]}"
end

x = 1

people.each do |name|
	puts "#{x} #{name}"
	x = x + 1
end

arr2 = people[1..3]

puts arr2
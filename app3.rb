# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

puts "aaa" == "aaa" # 1 случай
puts :aaa == :aaa # 2 случай
puts "aaa".equal? "aaa" # 3 случай
puts :aaa.equal? :aaa # 4 случай
 
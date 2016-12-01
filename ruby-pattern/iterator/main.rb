require_relative 'iterator'

iterator = Iterator.new(%w(hoge huga piyo))

while iterator.has_next
  puts(iterator.next)
end

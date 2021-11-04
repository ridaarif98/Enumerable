require_relative 'MyList'

list = MyList.new(1, 2, 3, 4)

puts(list.all? {|e| e < 5})
# true

puts(list.all? {|e| e > 5})
#false
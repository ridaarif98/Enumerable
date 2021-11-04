require_relative 'my_list'

list = MyList.new(1, 2, 4, 3)

puts(list.all? { |e| e < 5 })
# true

puts(list.all? { |e| e > 5 })
# false

puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

puts(list.filter(&:even?))
# 2, 4

puts(list.max)
# 4

puts(list.min)
# 1

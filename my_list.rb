require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  #   *list will take any number of parameters
  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |num|
      yield @list[num]
    end
  end
end

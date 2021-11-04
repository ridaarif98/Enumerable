module MyEnumerable
  def all?
    each do |e|
      return false unless yield e
    end
    true
  end

  def any?
    each do |e|
      return true if yield e
    end
    false
  end

  def filter
    result = []
    each do |e|
      result.push(e) if yield e
    end
    result
  end

  def max
    maximum = nil
    each do |e|
      maximum = e if maximum.nil? || e > maximum
    end
    maximum
  end

  def min
    minimum = nil
    each do |e|
      minimum = e if minimum.nil? || e < minimum
    end
    minimum
  end
end

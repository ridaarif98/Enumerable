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

end
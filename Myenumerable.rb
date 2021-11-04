module MyEnumerable

    def all?
      each do |e| 
       return false unless yield e
      end 
      true
    end

end
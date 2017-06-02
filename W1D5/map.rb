class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    @map.each do |pair|
      if pair[0] == key
        pair[1] == value
        return [key,value]
      end
    end
    @map << [key,value]
    [key,value]
  end

  def remove(key)
    @map.each do |pair|
      if pair[0] == key
        return @map.delete(pair)
        #return pair
      end
    end
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
  end

  def show
    @map
  end
end

class LRUCache
  def initialize(count)
    @cache = Array.new
    @count = count
  end

  def count
    @cache.count # returns number of elements currently in cache
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    elsif @cache.count == @count
      @cache.shift
    end
    @cache << el# adds element to cache according to LRU principle
  end

  def show
    @cache # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!


end

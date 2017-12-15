class LRUCache
    def initialize
      @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if !@cache.include?(el)
        @cache.shift(el)
      else
        @cache.delete(el)
        @cache.push(el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    # helper methods go here!

  end

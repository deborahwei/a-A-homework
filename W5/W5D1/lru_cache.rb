class LRUCache
    def initialize(size)
        @size = size 
        @cache = []
    end

    def count
      return @cache.size
    end

    def add(el)
        if self.count > 4
            @cache.shift
        end
        @cache.push(el)
    end

    def show
        print(@cache)
    end

    private
    # helper methods go here!

  end

  l = LRUCache.new(4)
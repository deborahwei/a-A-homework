class LRUCache
    def initialize(size)
        @size = size 
        @cache = []
    end

    def count
      return @cache.size
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
        elsif count >= @size
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
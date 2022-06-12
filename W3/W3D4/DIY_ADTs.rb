class Stack 
    def initialize 
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop 
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

class Queue 
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek 
        @queue[0]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        if get(key)
            entry = get(key) 
            i = @map.index(entry)
            @map[i] = [key, value]
        else
            @map.push[key, value]
        end
    end

    def get(key)
        @map.each_with_index do |entry, i|
            if entry[0] == key 
                return @map[i] 
            end
        end
        return nil 
    end

    def delete(key)
        @map.each_with_index do |entry, i|
            if entry[0] == key 
                @map.delete_at(i)
            end
        end
    end

    def show
        print @map 
    end
end

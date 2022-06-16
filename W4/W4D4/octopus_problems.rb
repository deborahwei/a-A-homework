def sluggish_octopus(arr)
    arr.length.times do |i|
        arr.length.times do |j|
            break if arr[i].length < arr[j].length 
            if j == arr.length - 1
                return arr[i]
            end
        end
    end
end

def dominant_octopus(arr)

    def merge_sort(arr)
        return arr if arr.length <= 1
    m = arr.length / 2
    merge(merge_sort(arr.take(m)), merge_sort(arr.drop(m)))
    end 

    def merge(left, right)
        merged = []
        until left.empty? || right.empty?
            if left.first.length > right.first.length 
                merged << left.shift
            else
                merged << right.shift 
            end
        end

        return merged + left + right 
    end

    sorted_arr = merge_sort(arr)
    return sorted_arr[0]
end

def clever_octopus 
    max = 0
    longest = ""
    (0...arr.length).each do |i|
        if arr[i].length > max 
            max = arr[i].length 
            longest = arr[i]
        end
    end
    return longest
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']
   
p sluggish_octopus(arr)


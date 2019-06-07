list = [4,3,78,2,0,2]
def bubble_sort(array)
    for i in (0...array.length)
        for j in (0...array.length-i-1)
            if array[j] > array[j+1]
                temp = array[j+1]
                array[j+1] = array[j]
                array[j] = temp
            end
        end
    end
    array
end

puts bubble_sort(list)
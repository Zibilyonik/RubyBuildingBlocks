list = [4,3,78,2,0,2]
list_words=["hi","hello","hey"]
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
def bubble_sort_by(array)
  for i in (0...array.length)
    for j in (0...array.length-i-1)
      result = yield array[j],array[j+1]
      if result > 0
        temp=array[j+1]
        array[j+1]=array[j]
        array[j]=temp
      end
    end
  end
  array
end
puts bubble_sort_by(list_words) {|left,right| left.length-right.length}
puts bubble_sort(list)

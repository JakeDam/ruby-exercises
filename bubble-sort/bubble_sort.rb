#Bubble Sort Function
def bubble_sort(array)
  length = array.size 
  loop do 
    swapped = false
    (length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i +1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
array
end

	


	
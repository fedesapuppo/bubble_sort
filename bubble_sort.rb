# Bubble Sort

# examples

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# type

# mothod wich takes a an array of numbers as parameter, and returns an array of numbers

# header

# bubble_sort(array)

# description

# for each element in the numbers array look at "first_element" element and look at 
# "second_element" where "second_element" is the element wich index is that 
# "first_element"'s index + 1. If out of order swap idexes of "first_element" and 
# "secon_element". Repeat "iterations", where "iterations" is the number of elements 
# in the numbers array - 1.

# body

def bubble_sort(array)
  sorted_array = array
  iterations = array.size - 1   
  
  iterations.times do
    array.each_with_index do |number, position|
        if position == iterations
          break
        end    
        if number > sorted_array[position + 1]
          sorted_array[position], sorted_array[position + 1]  = sorted_array[position + 1], sorted_array[position]
        end
    end
  end
    sorted_array
  end
  
  # test
  
  p bubble_sort([4,3,78,2,0,2])
  # => [0,2,2,3,4,78]
  
  # it returns sorted array if numbers_array given as parameter 
  # is sorted the other way through (from max value to min value)
  p bubble_sort([40,33,27,24,18,10,1])
  # => [1,10,18,24,27,33,40]
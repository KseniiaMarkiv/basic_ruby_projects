def bubble_sort array
  array.sort { |a, b|
    a <=> b
  }

end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([14,32,78,2,10,2])
p bubble_sort([4,3,7,8,2,0,2,5,7,66])
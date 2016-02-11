# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  array=[]
  array_1.each do |i|
    array.push i
  end
  array_2.each do |i|
    array.push i
  end
  p array
end

# Recursion Homework
def sum_to(number)
  return 0 if number <= 0
  number + sum_to(number - 1)
end

def add_numbers(arr)
  return nil if arr.length < 1     #won't work with arr.empty?
  return arr if arr.length == 1
  arr.first + add_numbers(arr[1..-1])
  # return nil if arr.length < 1
  # return 1 if arr.length <= 1
  # add_numbers(arr[0...-1]) + arr.last
end

def gamma_fnc(number)
  return nil if number == 0
  return number if number == 1
  (number-1) * (gamma_fnc(number-1))
end

def ice_cream_shop(flavors, favorite)
  return flavors if flavors.includes?(favorite)
  

end

def reverse(string)
  return string if string.length <= 1
  reverse(string[1..-1]) + string[0]
end

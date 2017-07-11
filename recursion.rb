def sum_to(num)
  return nil if num < 1
  return 1 if num == 1
  num + sum_to(num - 1)
end

def add_numbers(arr)
  return arr[0] if arr.length <= 1
  arr[0] + add_numbers(arr[1..-1])
end

def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num - 1) * gamma_fnc(num - 1)
end

def ice_cream_shop(flavs, fav)
  if flavs == []
    false
  elsif flavs[0] == fav
    true
  else
    ice_cream_shop(flavs[1..-1], fav)
  end
end

def reverse(str)
  return str if str.length <= 1
  reverse(str[1..-1]) + str[0]
end

# Test Cases
sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8)  # => returns nil

# Test Cases
add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil

# Test Cases
gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040

# Test Cases
# ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# ice_cream_shop([], 'honey lavender')  # => returns false

# Test Cases
reverse("house") # => "esuoh"
reverse("dog") # => "god"
reverse("atom") # => "mota"
reverse("q") # => "q"
reverse("id") # => "di"
reverse("") # => ""

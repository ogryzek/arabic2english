ONES = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
  'nine', 'ten'
]

TEENS = [
  'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen'
]

def converter(num)
  num_str = num.to_s

  case num_str.length
  when 1
    ONES[num.to_i]
  when 2
    num_arr = num_str.split("")
    convert_double_digits(num_arr)
  end
end

def convert_double_digits(num)
  "ten"
end

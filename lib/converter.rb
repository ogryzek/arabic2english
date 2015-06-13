ONES = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
  'nine', 'ten'
]

def converter(num)
  case num.to_s.length
  when 1
    ONES[num.to_i]
  when 2
    "ten"
  end
end

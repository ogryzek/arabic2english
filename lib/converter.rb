ONES = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
  'nine'
]

TEENS = [
  'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen'
]

TENS = [
  'zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
  'eighty', 'ninety'
]

def converter(num)
  num_str = num.to_s
  num_arr = num_str.split('')
  case num_str.length
  when 1
    ONES[num.to_i]
  when 2
    convert_double_digits(num_arr)
  when 3
    convert_triple_digits(num_arr)
  end
end

def convert_double_digits(nums)
  first_num, second_num = nums[0].to_i, nums[1].to_i
  if first_num == 1
    TEENS[second_num]
  elsif second_num == 0
    TENS[first_num]
  else
    "#{TENS[first_num]} #{ONES[second_num]}"
  end
end

def convert_triple_digits(nums)
  one = nums[2].to_i
  ten = nums[1].to_i
  hundred = ONES[nums[0].to_i]
  tens = ten == 0 ? ONES[one] : convert_double_digits(nums[1..2])
  ten == 0 && one == 0 ? "#{hundred} hundred" : "#{hundred} hundred #{tens}"
end

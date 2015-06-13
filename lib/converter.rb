ONES = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
  'nine', 'ten'
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
  if nums[0].to_i == 1
    TEENS[nums[1].to_i]
  else
    if nums[1].to_i == 0
      TENS[nums[0].to_i]
    else
    "#{TENS[nums[0].to_i]} #{ONES[nums[1].to_i]}"
    end
  end
end

def convert_triple_digits(nums)
  "nine hundred ninety nine"
end

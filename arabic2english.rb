require './lib/converter.rb'

num = ARGV[0]

def arabic2english(num)
  puts converter(num)
end

arabic2english(num)

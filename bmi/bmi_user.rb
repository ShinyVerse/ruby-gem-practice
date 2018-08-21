require 'bmi'

user_bmi = BMI.new
puts "Hello User!"
puts "I am here to tell you your body mass index. Also known as BMI."
while true do
  puts "Please, tell me your height (In inches please) ?"
  user_height = gets.chomp
  if user_height =~ /\d+/
      user_bmi.height(user_height.to_i, 'i')
    break
  end
end
while true do
  puts "Please, tell me your weight (In pounds please)?"
  user_weight = gets.chomp
  if user_weight =~ /\d+/
      user_bmi.weight(user_weight.to_i, 'p')
    break
  end
end

puts user_bmi.calc

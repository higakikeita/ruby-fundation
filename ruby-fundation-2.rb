num = gets.to_i

count = 0

point = []
require 'date'
while count < num do
  date, money  = gets.split.map(&:to_s)
  date = Date.parse(date).day.to_s
  
  money = money.to_f

  if date.include?("3")
    point << ((money / 100) * 2).floor
  elsif date.include?("5")
    point << ((money / 100) * 3).floor
  elsif date.include?("1") 
    point << ((money / 100) * 5).floor
  else point << (money / 100).floor
  end

  count += 1
end

puts "#{point.sum}ポイント"

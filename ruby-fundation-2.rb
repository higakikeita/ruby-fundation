num = gets.to_i

count = 0

point = []

while count < num do
  day, money  = gets.split.map(&:to_s)
  money = money.to_f

  if day.include?("3")
    point << ((money / 100) * 2).floor
  elsif day.include?("5")
    point << ((money / 100) * 3).floor
  elsif day == "01"
    point << ((money / 100) * 5).floor
  else point << (money / 100).floor
  end

  count += 1
end

puts "#{point.sum}ポイント"

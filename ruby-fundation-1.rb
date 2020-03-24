hight,weight = gets.split.map(&:to_f)

result = weight.floor(2) / ((hight * hight).floor(2) / 10000)
puts "BMI: #{result.floor(1)}"

if result >= 40 
  puts "判定: 肥満（４度）"
elsif 35 <= result && result < 40
  puts "判定: 肥満（３度）"
elsif 30 <= result && result < 35
  puts "判定: 肥満（２度）"
elsif 25 <= result && result < 30
  puts "判定: 肥満（１度）"
elsif 18.5 <= result && result < 25
  puts "判定: 普通体重"
else puts "判定: 低体重"
end

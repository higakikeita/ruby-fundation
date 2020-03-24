def point_add(date,price)
  date = date.to_s
   case
   when date.include?("1")
     rate = 0.05
   when date.include?("3")
     rate = 0.02
   when date.include?("5")
     rate = 0.03
   else
     rate = 0.01
   end
   point = price * rate
   return point
 end
 require 'date'
 input = gets.to_i
 i = 0
 point = 0
 purchases = []
 purchase = {}
  while i < input do
    puts  "#{i+1}回目の入力です"
    puts "購入日を入力して下さい(形式：yyyymmdd)"
    date = Date.parse(gets.chomp)
    puts "金額を入力してください"
    price = gets.to_i
    purchase = {date: date,price: price}
    purchases << purchase
    point += point_add(date.day,price)
    i += 1
  end
 purchases.each do |purchase|
   puts purchase
  end
 puts point

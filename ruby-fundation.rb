mailRegex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
m = gets.chomp
if m.match? mailRegex
  puts “適切なメールアドレスです”
else
  puts “不適切なメールアドレスです”
end


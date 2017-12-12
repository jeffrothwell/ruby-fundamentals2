#my recommendations
documentary = "Merchants of Doubt"
drama = "Pulp Fiction"
dramedy = "The Life Aquatic"
comedy = "Pineapple Express"

puts "I'm going to recommend a film for you"

puts "1. Do you like documentaries? (y / n)"
likedocs = gets.chomp

puts "1. Do you like dramas? (y / n)"
likedramas = gets.chomp

puts "1. Do you like comedies? (y / n)"
likecoms = gets.chomp

if likedocs == "y" || likedocs == "yes"
  puts "I recommend you check out #{documentary}"
elsif (likedocs == "n" || likedocs == "no") && (likedramas == "y" || likedramas == "yes") && (likecoms == "y" || likecoms == "yes")
  puts "I recommend you check out #{dramedy}"
elsif (likedocs == "n" || likedocs == "no") && (likedramas == "y" || likedramas == "yes") && (likecoms == "n" || likecoms == "no")
  puts "I recommend you check out #{drama}"
elsif (likedocs == "n" || likedocs == "no") && (likedramas == "n" || likedramas == "no") && (likecoms == "y" || likecoms == "yes")
  puts "I recommend you check out #{comedy}"
else
  puts "Maybe a good book is more your thing\n might I suggest a book about film appreciation?"
end

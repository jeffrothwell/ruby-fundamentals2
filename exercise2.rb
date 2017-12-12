#my recommendations
documentary = "Merchants of Doubt"
drama = "Pulp Fiction"
dramedy = "The Life Aquatic"
comedy = "Pineapple Express"

puts "I'm going to recommend a film for you\n but first I need you to rate your appreciation of\n the following genres on a scale of 1 to 5 (1 means dislike, 5 means you love it)\n  Remember, this is a rating, not a ranking\n  Mark them all with 1 if you don't like any\n  Mark all 5's if you love them all!"
puts "\nStart by rating your love of documentaries on a scale of 1 to 5"

docrank = gets.to_i

while docrank < 1 || docrank > 5
  puts "Sorry, was expecting a whole number between 1 and 5\n Please rate your love of documentaries"
  docrank = gets.to_i
end

puts "How about dramas - again 1 to 5 scale please"
dramarank = gets.to_i

while dramarank < 1 || dramarank > 5
  puts "Sorry, was expecting a whole number between 1 and 5\n Please rate your love of dramas"
  dramarank = gets.to_i
end

puts "How about comedies - again 1 to 5 scale please"
comedyrank = gets.to_i

while comedyrank < 1 || comedyrank > 5
  puts "Sorry, was expecting a whole number between 1 and 5\n Please rate your love of comedies"
  comedyrank = gets.to_i
end

puts "So I have:\ndocs: #{docrank}/5, dramas: #{dramarank}/5, comedies: #{comedyrank}/5"

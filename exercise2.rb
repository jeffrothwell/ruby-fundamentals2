# my recommendations
documentary = "Merchants of Doubt"
drama = "Pulp Fiction"
dramedy = "The Life Aquatic"
comedy = "Pineapple Express"

# user instructions
puts "I'm going to recommend a film for you\n but first I need you to rate your appreciation of\n the following genres on a scale of 1 to 5 (1 means dislike, 5 means you love it)\n  Remember, this is a rating, not a ranking\n  Mark them all with 1 if you don't like any\n  Mark all 5's if you love them all!"
puts "\nStart by rating your love of documentaries on a scale of 1 to 5"

docrank = gets.to_i

# the following 3 while loops with gets between them just checks that the
# input is between 1 and 5, asks for another value if it's not, then moves on
# to the next genre
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

# give them a little summary of what they entered
puts "So I have:\ndocs: #{docrank}/5, dramas: #{dramarank}/5, comedies: #{comedyrank}/5\n"

# start the conditional recommendations block
if docrank >=4
  puts "I see you really like documentaries - try #{documentary} - I think you'd dig it."
# at this point we know docrank is either 1, 2, or 3, so don't need to check that again
elsif dramarank >= 4 && comedyrank >= 4
  puts "Ample helpings of drama and comedy can be found in #{dramedy}."
elsif dramarank >=4 && comedyrank <=3
  puts "Hold on to your hat, it's time to watch #{drama}"
# at this point we know dramarank is 1, 2, or 3, so no need to check that again
elsif comedyrank >= 4
  puts "Have a few laughs with #{comedy}"
# at this point they could only have entered 3 or lower on everything
# the stretch assignment wants us to display a recommendation for the genre they ranked higher
# than the other two, if that is the case
elsif docrank > comedyrank && docrank > dramarank
  puts "Looks like you're leaning toward a documentary - try #{documentary}."
elsif comedyrank > docrank && comedyrank > dramarank
  puts "A little laughter never hurt anyone - try #{comedy}"
elsif dramarank > docrank && dramarank > comedyrank
  puts "Going out on a limb here, but give #{drama} a try."
elsif dramarank == comedyrank && dramarank != docrank  #added this myself, covers the case where they ranked drama and comedy equally, and I already know they've ranked documentaries lower
  puts "This is getting tough, you sure are picky - maybe you'll like #{dramedy}"
# now we know every rank is 3 or less, and there isn't a stand-out preference yet, not even a dramedy will do, time to recommend a book
elsif dramarank == 3 && comedyrank == 3 && docrank == 3
  puts "Kinda sorta ok with everything, well try Forrest Gump, everyone likes it!"
else
  puts "Maybe a good book is more your thing\n might I suggest a book about film appreciation?"
end

#a parting phrase, we're done
puts "Thanks for playing - if you like my pick, we should be friends\nIf not, the deadline for complaints was yesterday"

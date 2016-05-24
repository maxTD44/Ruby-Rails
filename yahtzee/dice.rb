class Dice

  def roll
    Random.rand(1...7)
  end

  def roll_multiple(n)
    n.times.map { roll }
  end

end

puts "Yahtzee!"
puts "Press enter to roll..."

input = gets.chomp

die = Dice.new

puts " | Die 1 | Die 2 | Die 3 | Die 4 | Die 5 "
#print "Roll: "
die_roll = die.roll_multiple(5)
die_roll.each { |x| print " |     "+x.to_s }
print "\n"

rerolls_remaining = 2

while rerolls_remaining > 0

  arr_saved = []

  puts "Would you like to save any dice? (y/n)"
  input_question = gets.chomp

  if input_question != "n"

    print "Pick dice columns to save: "
    saved_columns = gets.chomp.split(",").map(&:to_i)
    arr_saved = saved_columns.map { |x| die_roll[x-1] }
    rerolls_remaining -= 1

  end

  puts " | Die 1 | Die 2 | Die 3 | Die 4 | Die 5 "
  #print "Roll: "
  die_roll = die.roll_multiple(5 - arr_saved.count)
  die_roll = arr_saved + die_roll
  die_roll.each { |x| print " |     "+x.to_s }
  print "\n"

end

puts "No more re-rolls!"


def roll(die)
  die.to_a.sample
end    

puts "Enter dice roll (ex: 2d6 + 1d4):"
print "-> "
input = gets.chomp

parts = input.split('+').map(&:strip)
all_rolls = []
total = 0

parts.each do |part|
  if part =~ /(\d+)d(\d+)/
    num_dice = $1.to_i
    sides = $2.to_i
    rolls = []
    num_dice.times do
      rolls << roll(1..sides)
    end
    all_rolls << "#{num_dice}d#{sides}: #{rolls.join(', ')}"
    total += rolls.sum
  else
    puts "Invalid format in '#{part}'. Use format like 2d6."
    exit
  end
end

puts "Your Rolls: #{all_rolls.join('; ')}"
puts "Total: #{total}"
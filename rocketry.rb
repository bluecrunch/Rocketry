def add(a, b)
  return a + b
end

print "What's your name?"
player_name = gets.chomp()
print "Welcome Director ", player_name ,". The President has chosen you to lead the space agency."
puts "Your first goal is to prepare the first launch of a rocket into space. Let's go!"

$atlas_name = "Atlas Space Rocket"
atlas_reliability = 30

$titan_name = "Titan Space Rocket"
titan_reliability = 20

$saturn_name = "Saturn V Space Rocket"
saturn_reliability = 5

puts "Please choose a rocket-program. Type in A for the Atlas-program, B for Titan or C for Saturn."
choice = gets.chomp()
if choice == "A"
  puts "You have chosen the Atlas-program."
  choice = $atlas_name
  reliability = atlas_reliability
elsif choice == "B"
  puts "You have chosen the Titan-program."
  choice = $titan_name
  reliability = titan_reliability
elsif choice == "C"
  puts "You have chosen the Saturn-program."
  choice = $saturn_name
  reliability = saturn_reliability
else
  puts "Not assigned."
end

print "The ", choice ," has a reliability of ", reliability ," and your team of engineers will improve it as good as possible."
puts "You can order them to improve the rocket's reliability or to prepare for launch."
puts "A higher reliability increases the likelihood of a successful launch. A lower reliability increases the chance for a catastrophic launch."
puts "Don't forget that our brave men and women will use your rockets to fly to the moon."
puts "The hearts of our nation are with you and your program."

puts "Please choose if you want to improve the reliability of the rocket and type Improve or type Launch to prepare for launch."
order = gets.chomp()


while order != "Launch" do
  if order == "Improve"
    reliability += rand(15)
    print "Your rocket's reliability is now", reliability ,"!"
    puts "Please choose if you want to improve the reliability of the rocket and type Improve or type Launch to prepare for launch."
    order = gets.chomp()
  elsif order != "Launch" && order != "Improve"
    puts "Wrong command."
    order = gets.chomp()
  else
    "Prepare rocket launch!"
  end
end

puts "Flight Director: This is Mission Control. Give me 'Go' or 'No Go' for launch."
puts "BOOSTER: Go!"
puts "RETRO: Go!"
puts "FIDO: Go!"
puts "GUIDANCE: Go!"
puts "EECOM: Go!"
puts "GNC: Go!"
puts "TELMU: Go!"
puts "NETWORK: Go!"
puts "CAPCOM: Go!"
puts "Flight Director: Launch Control, this is Mission Control, we have go for launch."
puts "Launch Control: Roger, initiate countdown."
puts "10, 9..."
puts "8, 7..."
puts "6, 5..."
puts "Ignition Sequence starts"
puts "4, 3..."
puts "2, 1..."

#if order == "Launch"
height = 0
speedup = 10
turn = 1
accident = rand(100)

while turn < 10 do

  if height == 0
    if accident > reliability
      puts "The rocket exploded on launch pad!"
      turn = 10
    else
      puts "Liftoff, we have liftoff!"
      height += speedup
      speedup +=5 * turn
      turn += 1
    end
  else
    if accident > reliability
      puts "The rocket exploded in the air!"
      turn = 10
    else
      print "Height ", height , " meters!"
      height +=speedup
      speedup += 5 * turn
      turn += 1
    end
  end
end







#end

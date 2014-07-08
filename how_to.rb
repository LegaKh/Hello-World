require_relative 'code'


raoul_duke = Role.new("Raoul Duke", 30..40, "male")
puts "role name - #{raoul_duke.name}, age range - #{raoul_duke.age_range}, and gender is #{raoul_duke.gender}"

dr_gonzo = Role.new("Dr Gonzo", 28..35, "male")

johnny_depp = Actor.new("Johnny Depp", 33, "male")
puts "name - #{johnny_depp.name}, age - #{johnny_depp.age}, gender - #{johnny_depp.gender}"

puts "can #{johnny_depp.name} play #{raoul_duke.name}? #{johnny_depp.fit?(raoul_duke)}"



terry_gilliam = Jury.new("Terry Gilliam", "male")
christina_ricci = Jury.new("Christina Ricci", "female")



fear_and_oathing_in_las_vegas = Act.new("Fear and Loathing in Las Vegas", 118, "A bureaucrat in a retro-future world tries to correct an administrative error and himself becomes an enemy of the state.")

second_act = Act.new("ZZZZ", 25, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

puts "Johnny Depp's rate on Raoul Duke Role: #{fear_and_oathing_in_las_vegas.play(johnny_depp, raoul_duke, terry_gilliam, christina_ricci)}"
puts "Johnny Depp's rate on Dr Gonzo Role: #{second_act.play(johnny_depp, dr_gonzo, terry_gilliam, christina_ricci)}"

puts "Johnny Depp alredy tried the roles' #{johnny_depp.tried_roles} and his total duration is #{johnny_depp.duration_all}"


puts "Johnny Depp best role is#{johnny_depp.best_role}"
Role = Struct.new(:name, :age_range, :gender)

class Actor
  attr_accessor :tried_roles, :duration_all, :name, :age, :gender
  
  def initialize(name, age, gender)
    @name, @age, @gender = name, age, gender
    @tried_roles = Hash.new
    @duration_all = 0
  end
  
  def fit?(role)
    gender == role.gender && role.age_range.include?(age)
  end
  
  def best_role
    (tried_roles.sort_by {|_,v| v}).last
  end
  
end

Jury = Struct.new(:name, :age_range, :gender) do
  def rate(actor, text)
    return rand(7..10) if gender == "male" && actor.gender == "female"
    return rand(0..7) if gender == "female" && text.split.size < 30
    rand(0..10)
  end
end

Act = Struct.new(:theme, :duration, :text) do
  def play(actor, role, *jury)
     if actor.fit?(role) && actor.tried_roles[role.name] == nil
       point = 0
       jury.each { |jud| point += jud.rate(actor, text) }
       actor.duration_all += duration
       actor.tried_roles[role.name] = point / jury.size
     else
       "ERROR, wrong role or age or actor already tried this role"
     end
  end
end
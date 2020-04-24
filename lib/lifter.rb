class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym} #list of gyms
  end

  def self.total_lift_array
    self.all.map {|lifters| lifters.lift_total}
  end

  def self.average_lift
    self.total_lift_array.sum(0.0) / self.total_lift_array.size
  end

  def membership_cost_array
    memberships.map {|object| object.cost}
  end

  def membership_cost
    membership_cost_array.sum(0.0)
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end
end


# - Get a list of all lifters

#   - Get a list of all the memberships that a specific lifter has

#   - Get a list of all the gyms that a specific lifter has memberships to

#   - Get the average lift total of all lifters

#   - Get the total cost of a specific lifter's gym memberships

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym
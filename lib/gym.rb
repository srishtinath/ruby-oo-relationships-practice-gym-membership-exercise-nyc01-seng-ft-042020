class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}
  end

  def lifter_names
    lifters.map {|lifters_array| lifters_array.name}
  end

  def combined_lift_total_array
    memberships.map {|membership| membership.lifter.lift_total}
  end

  def combined_lift_total
    combined_lift_total_array.sum(0.0)
  end

end


# - Get a list of all gyms x

#   - Get a list of all memberships at a specific gym x

#   - Get a list of all the lifters that have a membership to a specific gym x

#   - Get a list of the names of all lifters that have a membership to that gym

#   - Get the combined lift total of every lifter has a membership to that gym

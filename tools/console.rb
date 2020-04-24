# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
# **Lifter**

#   - Get a list of all lifters

#   - Get a list of all the memberships that a specific lifter has

#   - Get a list of all the gyms that a specific lifter has memberships to

#   - Get the average lift total of all lifters

#   - Get the total cost of a specific lifter's gym memberships

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym

# **Membership**

#   - Get a list of all memberships

# **Gym**

#   - Get a list of all gyms

#   - Get a list of all memberships at a specific gym

#   - Get a list of all the lifters that have a membership to a specific gym

#   - Get a list of the names of all lifters that have a membership to that gym

#   - Get the combined lift total of every lifter has a membership to that gym

lifter1 = Lifter.new("Susan", 1000)
lifter2 = Lifter.new("Sam", 900)
lifter3 = Lifter.new("Tashawn", 500)
gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Equinox")
gym3 = Gym.new("Fitness World")
membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(200, lifter2, gym2)
membership3 = Membership.new(55, lifter3, gym3)
membership4 = Membership.new(250, lifter1, gym2)


binding.pry

puts "Gains!"

Lifter.all
lifter1.memberships
lifter1.gyms
Lifter.average_lift
lifter1.membership_cost
lifter3.sign_up(100, gym2)

Membership.all

Gym.all
gym2.memberships
gym2.lifters
gym2.lifter_names
gym2.combined_lift_total
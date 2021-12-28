require_relative '../lib/remove_screws_i'

# John is a worker, his job is to remove screws from a machine. There are 2 types of screws: slotted (-) and cross (+).
# John has two screwdrivers, one for each type of screw.
#
#   The input will be a (non-empty) string of screws, e.g. : "---+++"
#
# When John begins to work, he stands at the first screw, with the correct screwdriver in his hand, and another in his
# tool kit. He works from left to right, removing every screw. When necessary, he switches between the screwdriver in
# his hand and the one in his tool kit.
#
#     Each action takes a set amount of time:
#                                         remove one screw : 1 second
# move to the next screw: 1 second
# switch screwdrivers: 5 seconds
# Your task is to return the total time taken to remove all the screws, in seconds.
#
#     Examples
# In order to be more clear, we use ABCDEF to represent the screws. The number in brackets is the time in seconds:
#
#   screws: "---+++"
# ABCDEF
#
# remove A (1) + move to B (1) + remove B (1) +
#                                           move to C (1) + remove C (1) + move to D (1) +
#                                                                                      switch screwdriver (5) + remove D (1) +
# move to E (1) + remove E (1) + move to F (1) + remove F (1)
#
# total time = 16 seconds
# Another example:
#
#           screws: "-+-+-+"
# ABCDEF
#
# remove A (1) +
#            move to B (1) + switch screwdriver (5) + remove B (1) +
#                                                                move to C (1) + switch screwdriver (5) + remove C (1) +
# move to D (1) + switch screwdriver (5) + remove D (1) +

# total time = 36 seconds

RSpec.describe 'remove screws I' do
  it 'calculates the time in seconds to remove the given number of screws' do
    expect(screws('---+++')).to eq(16)
  end
end

# To solve:
# take the unempty string and turn it into an array.
# go through the array 1 element at a time
# count 1 for each element (1 second per screw)
# add 1 to move to each additional element (i.e. length of array - 1)
# add 5 for every change of each element value (i.e the change of screw driver - this would occur if the element does not
# equal the previous element)


class RandomArray < ApplicationRecord
  #to present the array
  def input
    number_set.split(',').map(&:to_i)
  end
end
class RandomArraySerializer < ActiveModel::Serializer
  attributes :id, :number_set, :output

  def data
    object.number_set.split(',').map(&:to_i)
  end

  def output
    nil
  end
end
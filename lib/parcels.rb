class Parcels
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
  volume = @length * @width * @height
  end

  def cost_to_ship
    cost = @weight * volume() / 100
  if cost <= 5
    cost = 5
  end
  return cost.to_i
  end
end

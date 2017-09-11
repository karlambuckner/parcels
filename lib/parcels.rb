class Parcels
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
    # @weight = weight
  end
  def volume
    calculate = @length * @width * @height
  end
  # def cost_to_ship
  #
  # end
end

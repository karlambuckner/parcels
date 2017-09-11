require('rspec')
require('parcels')

describe(Parcels) do
  describe("#calculation") do
    it('calculates volume based on user input') do
      test_volume = Parcels.new(3, 4, 5, 1)
      expect(test_volume.volume()).to(eq(60))
    end
    it('calculates price based on volume and weight') do
      test_price = Parcels.new(3, 4, 5, 10)
      expect(test_price.cost_to_ship()).to(eq(6))
    end
  end
end

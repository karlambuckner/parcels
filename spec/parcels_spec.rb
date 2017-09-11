require('rspec')
require('parcels')

describe(Parcels) do
  describe("#volume") do
    it('will calculate volume based on user input') do
      test_volume = Parcels.new(3, 4, 5)
      expect(test_volume.volume()).to(eq(60))
    end
  end
end

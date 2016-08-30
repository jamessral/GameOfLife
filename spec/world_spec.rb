require 'rspec'
require_relative '../app/world'

describe World do

  let (:world) { described_class.new(seed) }
  let (:seed) { [] }

  it 'exits' do
    expect(world).to be_a World
  end

  describe "#cells" do
    let (:seed) { [[2,2]] }

    it 'has one cell' do
      expect(world.cells).to match_array [[2,2]]
    end
  end

  context "the next generation" do
    before do
      world.tick
    end

    context "with one cell" do
      let (:seed) { [[2,2]] }
      it "has no more cells" do
        expect(world.cells).to match_array []
      end
    end

    context "with two cells" do
      let (:seed) { [[2,2], [2,1]] }
      it "has no more cells" do
        expect(world.cells).to match_array []
      end
    end

    context "with three cells" do
      let (:seed) { [[2,2], [2,1], [1,1]] }
      it "has one cell" do
        expect(world.cells).to match_array [[2,1]]
      end
    end

    context "with three random cells" do
      let (:seed) { [[2,2], [2,1], [10,10]] }
      it "has one cell" do
        expect(world.cells).to match_array []
      end
    end


  end
end

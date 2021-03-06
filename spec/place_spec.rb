require './spec/spec_helper'

describe Place do
  context 'new default' do
    let!(:place) { Place.new }

    it { expect(place.class).to eq Place }
    it { expect(place.coordinate).to eq [0,0] }
    it { expect(place.direction).to eq "NORTH" }
  end

  context 'new with param' do
    let!(:place) { Place.new(2,3,"EAST") }

    it { expect(place.coordinate).to eq [2,3] }
    it { expect(place.direction).to eq "EAST" }
  end

  describe 'move' do
    context 'east' do
      let!(:place) { Place.new(2,3,"EAST") }
      it 'should move forward facing the direction' do
        expect(place.move.coordinate).to eq [3,3]
      end
    end
  end

  describe 'turn' do
    context 'left' do
      let!(:place) { Place.new(2,3,"EAST") }

      it 'should turn left' do
        expect(place.turn_left.direction).to eq "NORTH"
      end
    end
  end
end

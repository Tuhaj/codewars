require 'rspec'
require_relative 'van_eck'

describe 'Van Eck' do
  it 'returns nil 0 size' do
    expect(VanEck.new.sequence(0)).to eq nil
  end

  it 'returns [0] for 1 size' do
    expect(VanEck.new.sequence(1)).to eq [0]
  end


  it 'returns first seven numbers of the sequence' do
    expect(VanEck.new.sequence(7)).to eq [0,0,1,0,2,0,2]
  end

  it 'returns first 14 numbers of the sequence' do
    expect(VanEck.new.sequence(14)).to eq [0,0,1,0,2,0,2,2,1,6,0,5,0,2]
  end

  it 'returns first 96 numbers of the sequence' do
    expect(VanEck.new.sequence(96)).to eq [0, 0, 1, 0, 2, 0, 2, 2, 1, 6, 0, 5, 0, 2, 6, 5, 4, 0, 5, 3, 0, 3, 2, 9, 0, 4, 9, 3, 6, 14, 0, 6, 3, 5, 15, 0, 5, 3, 5, 2, 17, 0, 6, 11, 0, 3, 8, 0, 3, 3, 1, 42, 0, 5, 15, 20, 0, 4, 32, 0, 3, 11, 18, 0, 4, 7, 0, 3, 7, 3, 2, 31, 0, 6, 31, 3, 6, 3, 2, 8, 33, 0, 9, 56, 0, 3, 8, 7, 19, 0, 5, 37, 0, 3, 8, 8]
  end
  it "returns no number for -1" do
    expect(VanEck.new.sequence(-1)).to eq nil
  end

  it 'returns index of particular number ' do
    expect(VanEck.new.get_index_of(42)).to eq 51
  end
end

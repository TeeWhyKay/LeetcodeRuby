require_relative '../threesum'

describe '#two_sum' do
  it 'should return the two integers that sum to target' do
    actual = two_sum([2, 7, 11, 15], 9)
    expected = [2, 7]
    expect(actual).to eq(expected)
  end

  it 'should return empty array if no 2 integers in array sum to target' do
    actual = two_sum([2, 6], 9)
    expected = []
    expect(actual.empty?).to eq(expected.empty?)
  end
end

describe '#two_sum_bidirectional' do
  it 'should return the two integers that sum to target' do
    actual = two_sum_bidirectional([2, 7, 11, 15], 9)
    expected = [2, 7]
    expect(actual).to eq(expected)
  end
end

describe '#three_sum' do
  it 'should return multiple solutions with no duplicates' do
    actual = three_sum([-1, 0, 1, 2, -1, -4])
    expected = [[-1, -1, 2], [-1, 0, 1]]
    expect(actual).to eq(expected)
  end

  it 'should return only 1 solution if the array is all zeros' do
    actual = three_sum([0,0,0,0])
    expected = [[0,0,0]]
    expect(actual).to eq(expected)
  end
end

require_relative '../maxsubarray.rb'

describe '#max_subarray' do
  it 'returns the largest sum of a contiguous sub array' do
    actual = max_subarray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
    expected = 6
    expect(actual).to eq(expected)
  end

  it 'returns the largest sum of a contiguous sub array' do
    actual = max_subarray([5, 4, -1, 7, 8])
    expected = 23
    expect(actual).to eq(expected)
  end

  it 'returns the largest sum of a single element array' do
    actual = max_subarray([1])
    expected = 1
    expect(actual).to eq(expected)
  end
end

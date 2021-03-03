require 'rspec/autorun'

RSpec.describe "Smallest Integer" do
  let(:object) { SmallestInteger.new }

  it 'should return smallest integer from the array' do
    expect(object.solution([-1, 1, -2, 2])).to eq(-2)
  end

  it 'should return smallest integer even if the element is first in the array' do
    expect(object.solution([-2, 1, -1, 2])).to eq(-2)
  end

  it 'should return smallest integer even if its the last element in the array' do
    expect(object.solution([3, 2, 5, 6, 4, 1])).to eq(1)
  end

  it 'should return the right answer if the array contains just one element' do
    expect(object.solution([1])).to eq(1)
  end

  it 'should return the right answer for the largest array possible' do
    expect(object.solution(Array(1..1000).shuffle)).to eq(1)
  end

  it 'should return the right answer for the largest negative array possible' do
    expect(object.solution(Array(-1000..-1).shuffle)).to eq(-1000)
  end

  it 'should return the right answer for array with element 0' do
    expect(object.solution([0])).to eq(0)
  end

  it 'should return the right answer for array with repeated elements' do
    expect(object.solution(Array(0..10).shuffle + Array(0..10).shuffle)).to eq(0)
  end
end

class SmallestInteger
  def solution(a)
    ans = a[0]
    for i in 1 .. (a.length - 1)
      if ans > a[i]
        ans = a[i]
      end
    end
    return ans
  end
end

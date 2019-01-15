require_relative '../lib/00_multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(23)).to eq(false)
    expect(is_multiple_of_3_or_5?(52)).to eq(false)
    expect(is_multiple_of_3_or_5?(47)).to eq(false)
  end
end


describe "sum_of_3_or_5_multiples" do
  it "should return the sum of all multiples of 3 & 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(1000)).to eq(233168)
  end

  it "the number given should be an integer" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels.")
    expect(sum_of_3_or_5_multiples(1.34)).to eq("Yo ! Je ne prends que les entiers naturels.")
    expect(sum_of_3_or_5_multiples("deux")).to eq("Yo ! Je ne prends que les entiers naturels.")
    expect(sum_of_3_or_5_multiples("3%")).to eq("Yo ! Je ne prends que les entiers naturels.")
  end
end
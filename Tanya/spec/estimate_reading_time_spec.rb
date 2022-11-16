require "estimate_reading_time"

RSpec.describe "estimate_reading_time" do
  it "returns 1 if the text has 200 words" do
    two_hundred_words = "hello " * 200
    expect(estimate_reading_time(two_hundred_words)).to eq 1
  end
  it "returns 3 if the text has 500 words" do
    five_hundred_words = "hello " * 500
    expect(estimate_reading_time(five_hundred_words)).to eq 3
  end
end

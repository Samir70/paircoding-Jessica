# split single method into two helper methods

require 'improve_grammer'

RSpec.describe "improve grammar methods" do
    context "starts_with_capital method" do
        it "returns true when given text 'Hello'" do
            expect(starts_with_capital?("Hello")).to eq true
        end
        it "returns false when given text 'hi'" do
            expect(starts_with_capital?("hi")).to eq false
        end
    end
    context "ends_with_punctuation method" do
        it "returns true when given text 'Yes.'" do
            expect(ends_with_punctuation?("Yes.")).to eq true
        end
        it "returns true when given text 'Yes?'" do
            expect(ends_with_punctuation?("Yes?")).to eq true
        end
        it "returns true when given text 'Yes!'" do
            expect(ends_with_punctuation?("Yes!")).to eq true
        end
        it "returns false when given text 'What'" do
            expect(ends_with_punctuation?("What")).to eq false
        end
    end
    context "good_sentence? method" do
        it "returns true when given 'I like dogs.'" do
            expect(good_sentence?("I like dogs.")).to eq true
        end
        it "returns false when given 'I like dogs'" do
            expect(good_sentence?("I like dogs")).to eq false
        end
        it "returns false when given 'i like dogs.'" do
            expect(good_sentence?("i like dogs.")).to eq false
        end
        it "returns false when given 'i like dogs'" do
            expect(good_sentence?("i like dogs")).to eq false
        end
    end
end
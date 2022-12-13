# A method called make_snippet that takes a string as an argument
#  and returns the first five words and then a '...' if there are more than that.

#cmd /  comments out multiple lines

require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "when string is empty" do
    it "returns empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "when string is 3 words" do
    it "returns string" do
      result = make_snippet("Kamila likes coding")
      expect(result).to eq "Kamila likes coding"
    end
  end

  context "when string is 5 words" do
    it "returns string" do
      result = make_snippet("Kamila likes coding, dogs, cats")
      expect(result).to eq "Kamila likes coding, dogs, cats"
    end
  end

  context "when string is 6 words" do
    it "returns the first 5 words followed by ..." do
      result = make_snippet("Kamila likes coding dogs cats chocolates")
      expect(result).to eq "Kamila likes coding dogs cats..."
    end
  end
end
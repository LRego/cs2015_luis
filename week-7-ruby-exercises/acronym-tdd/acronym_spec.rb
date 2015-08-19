require_relative "acronym"

describe "make_acronym" do
  it "creates an acronym with all uppercase letter" do
    expect(make_acronym("Hello codewarrior")).to eq "HC"
  end

  it "only works on strings" do
    expect(make_acronym(42)).to eq "Not a string"
  end

  it "only works with spaces and letters" do
    expect(make_acronym("a42")).to eq "Not letters"
  end

  it "ignores empty strings" do
    expect(make_acronym("")).to eq ""
  end
end

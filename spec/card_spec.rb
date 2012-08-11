require 'pokersim'

describe Pokersim::Card do
  it "should have a rank and a suit" do
    card = Pokersim::Card.new(2, "S")
    card.to_s.should == "2S"
  end
end

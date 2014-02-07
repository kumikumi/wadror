require 'spec_helper'




describe Beer do
  it "is saved if it has a name and style set" do
    beer = Beer.create name:"TestBeer", style:"Lager"

    expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end
  
  it "is not saved without a name" do
    beer = Beer.create style:"TestBeer"

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end
  
  it "is not saved without a style" do
    beer = Beer.create name:"TestBeer"

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end

end

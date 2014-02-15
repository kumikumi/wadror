require 'spec_helper'

describe Beer do
  it "is saved if it has a name and style set" do
    s = Style.create name: "style", description: "descr"
    beer = Beer.create name:"Beer", style_id: s.id

    expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end
  
  
  it "is not saved without a name" do
    s = Style.create name: "style", description: "descr"
    beer = Beer.create style_id: s.id

    expect(beer).not_to be_valid
    expect(Beer.count).to eq(0)
  end

end

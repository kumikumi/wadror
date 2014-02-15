require 'spec_helper'

describe "Places" do
  it "if one is returned by the API, it is shown on the page" do
    BeermappingApi.stub(:places_in).with("kumpula").and_return(
        [ Place.new(:id => 1, :name => "Oljenkorsi") ]
    )

    visit places_path
    fill_in('city', with: 'kumpula')
    click_button "Search"

    expect(page).to have_content "Oljenkorsi"
  end
  
  it "if there are two returned by the API, both are shown on the page" do
    BeermappingApi.stub(:places_in).with("malminkartano").and_return(
        [ Place.new(:id => 1, :name => "Red Lion"), Place.new(:id => 2, :name => "Perä baari") ]
    )

    visit places_path
    fill_in('city', with: 'malminkartano')
    click_button "Search"

    expect(page).to have_content "Red Lion"
    expect(page).to have_content "Perä baari"
  end
  
  it "if none are returned by the API, it is shown on page" do
    BeermappingApi.stub(:places_in).with("vantaa").and_return(
        []
    )

    visit places_path
    fill_in('city', with: 'vantaa')
    click_button "Search"

    expect(page).to have_content "No locations in vantaa"
  end
end


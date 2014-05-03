require 'spec_helper'

describe "creating a movie" do

  it "saves the movie and shows the new movie's details" do
    visit movies_url
    click_link 'Add New Movie'
    fill_in "Title", with: "New Movie Title"
    fill_in "Description", with: "Superheroes saving the world from villains"
    fill_in "Rating", with: "PG-13"
    fill_in "Total gross", with: "75000000"
    select (Time.now.year - 1).to_s, :from => "movie_released_on_1i"
    click_button "Create Movie"

    expect(page).to have_text('New Movie Title')
  end

end

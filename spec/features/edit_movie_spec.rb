require 'spec_helper'

describe "Editing a movie" do

  it "has an edit page" do
    movie = Movie.create(movie_attributes)
    visit movie_path(movie)
    click_link 'Edit'

    expect(find_field('Title').value).to eq(movie.title)
  end

  it "updates a movie when submitted" do
    movie = Movie.create(movie_attributes)
    visit edit_movie_path(movie)
    fill_in "Title", with: "New Movie Title"
    click_button "Update Movie"

    expect(page).to have_text("New Movie Title")
  end
  
end

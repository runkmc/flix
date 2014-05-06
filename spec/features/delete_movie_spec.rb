require 'spec_helper'

describe "Deleting a movie" do

  it "deletes a movie and redirects to the listing page" do
    movie = Movie.create(movie_attributes)
    visit movie_path(movie)

    click_link "Delete"

    expect(page).not_to have_content(movie.title)
  end
  
end

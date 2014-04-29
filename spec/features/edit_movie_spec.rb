require 'spec_helper'

describe "Editing a movie" do

  it "has an edit page" do
    movie = Movie.create(movie_attributes)
    visit movie_path(movie)
    click_link 'Edit'

    expect(find_field('Title').value).to eq(movie.title)
  end
  
end

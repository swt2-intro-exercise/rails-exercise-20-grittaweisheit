require 'rails_helper'

describe "Authors index page", type: :feature do
  
  it "should render without error" do
    visit authors_path
  end

  it "should display the authors' names and homepages with link in a table with the columns Name and Homepage" do
    @author1 = FactoryBot.create :author, first_name: "Paul"
    @author2 = FactoryBot.create :author
    visit authors_path
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("Paul Turing")
    expect(page).to have_link("http://wikipedia.de/Alan_Turing")
    expect(page).to have_link 'New', href: new_author_path
  end
end
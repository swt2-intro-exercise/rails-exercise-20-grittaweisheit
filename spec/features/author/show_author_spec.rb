require 'rails_helper'

describe "Show author page", type: :feature do
  
  it "should render without error" do
    @author = FactoryBot.create :author
    visit author_path(@author)
  end

  it "should display the author's name and homepage" do
    @author = FactoryBot.create :author
    visit author_path(@author)
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
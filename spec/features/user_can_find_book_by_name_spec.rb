require 'rails_helper'

RSpec.describe "user can input a book's title into the form and hit search" do
  it "and can see the book's info including:
  - title
  - author
  - genres" do

    visit '/'

    fill_in :title, with: "The Man Who Saw Everything"
    click_button "Find Book"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("The Man Who Saw Everything")
    expect(page).to have_content("Deborah Levy")
  end

  it "I can see reviews for this book" do
    visit '/'

    fill_in :title, with: "The Man Who Saw Everything"
    click_button "Find Book"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Review 1")
  end
end


# As a user
# When I visit "/"
# And I input "the man who saw everything" into the form
# (Note: Use the existing search form)
# And I click "Find Book"
# Then I should be on page "/search"
# Then I should see the book's info
# For that book I should see
# - Title
# - Author
# - Genres
# (Note: genres is referred to as "subjects" in the book search response)
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: ""The Man Who Saw Everything,"" which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at "authoritarian old men.""
# Review Publication Date: 2019-10-09
# - Review 2: "Deborah Levy's latest novel, "The Man Who Saw Everything," experiments with time travel, history and the endless complications of love."
# Review Publication Date: 2019-10-15

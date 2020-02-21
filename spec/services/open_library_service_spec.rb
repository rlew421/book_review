require 'rails_helper'

RSpec.describe OpenLibraryService do
  it "returns book info by title" do
    search = subject.book_by_title("The Man Who Saw Everything")
    expect(search).to be_a Hash
    expect(search.count).to eq(20)

    expect(search).to have_key :title
    expect(search).to have_key :author_name
  end
end

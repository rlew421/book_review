require 'rails_helper'

RSpec.describe NewYorkTimesService do
  it "returns book reviews by book title" do
    search = subject.reviews_by_title("The Man Who Saw Everything")
    expect(search).to be_an Array
    expect(search.count).to eq(2)

    expect(search.first).to have_key :summary
    expect(search.first).to have_key :publication_dt
  end
end

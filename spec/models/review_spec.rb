require 'rails_helper'

RSpec.describe Review, type: :model do
  it "exists" do
    attrs = {
      summary: "The Man Who Saw Everything is great",
      publication_dt: "2019-10-09"
    }

    review = Review.new(attrs)

    expect(review).to be_a Review
    expect(review.summary).to eq("The Man Who Saw Everything is great")
    expect(review.publication_date).to eq("2019-10-09")
  end
end

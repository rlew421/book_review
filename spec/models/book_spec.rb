require 'rails_helper'

RSpec.describe Book, type: :model do
  it "exists" do
    attrs = {
      title: "The Man Who Saw Everything",
      author_name: ["Deborah Levy"]
    }

    book = Book.new(attrs)

    expect(book).to be_a Book
    expect(book.title).to eq("The Man Who Saw Everything")
    expect(book.author_name).to eq("Deborah Levy")
  end
end

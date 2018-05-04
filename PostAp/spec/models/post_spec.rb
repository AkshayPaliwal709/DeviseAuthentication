require 'rails_helper'

RSpec.describe Post, type: :model do
   it "has one after adding one" do
    Post.create
    expect(Post.count).to eq 1
  end
end

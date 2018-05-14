require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(first_name: "value_first_name", last_name: "value_last_name") }
  before { ApplicationRecord.send :include, CommentAttribute }

  describe ".[]" do
    it { expect(user["comment_last_name"]).to eq "value_last_name" }
    it { expect(user["comment_void"]).to be_nil  }
  end

  describe ".[]" do
    it { expect(user["comment_first_name"]).to eq "value_first_name" }
  end

  describe ".[]=" do
    before { user["comment_last_name"] = "changed" }
    it { expect(user.last_name).to eq "changed" }
  end

  describe ".comment_to_attr_name" do
    it { expect(user.comment_to_attr_name("comment_first_name")).to eq "first_name" }
  end

  describe ".attr_name_to_comment" do
    it { expect(user.attr_name_to_comment(:first_name)).to eq "comment_first_name"}
  end

  describe ".comments" do
    it { expect(user.comments).to eq({"id"=>nil, "comment_first_name"=>"value_first_name", "comment_last_name"=>"value_last_name"}) }
  end
end

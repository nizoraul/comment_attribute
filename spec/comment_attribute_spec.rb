require "rails_helper"

describe "CommentAttribute" do
  let(:user) { User.new(first_name: "first_name", last_name: "last_name") }
  #before { ApplicationRecord.send :include, CommentAttribute }

  describe ".[]" do
    it { expect(user["comment_last_name"]).to eq "last_name" }
    it { expect(user["comment_void"]).to be_nil  }
  end

  describe ".[]" do
    it { expect(user["comment_first_name"]).to eq "first_name" }
  end

  describe ".[]=" do
    before { user["comment_last_name"] = "changed" }
    it { expect(user.last_name).to eq "changed" }
  end
end

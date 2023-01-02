require 'rails_helper'

RSpec.describe Administrator, type: :model do
  describe "#password=" do
    example "文字列を与えると、hashed_passwordは長さ60文字になる" do
      member = Administrator.new
      member.password = "admins"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end
    example "nilが与えられると、hashed_passwordはnilになる" do
      member = Administrator.new(hashed_password: "x")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do

  context "admin user" do
    it "responds true when asked if_admin?" do
      user = build(:admin_user)
      expect(user.is_admin?).to eq true
    end

  end

  context "standard user" do
    it "responds false when asked if_admin?" do
      user = build(:user)
      expect(user.is_admin?).to eq false
    end
  end

end

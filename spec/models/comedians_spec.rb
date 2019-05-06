require 'rails_helper'

describe Comedian, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :specials }
  end
end

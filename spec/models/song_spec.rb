require 'rails_helper'

RSpec.describe Song, type: :model do


  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(20) }
  end
end
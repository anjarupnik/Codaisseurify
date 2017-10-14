require 'rails_helper'

RSpec.describe Artist, type: :model do


  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "name must be unique" do
      Artist.create!(name: "Anja")
      artist = Artist.new(name: "Anja")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end


  end
end

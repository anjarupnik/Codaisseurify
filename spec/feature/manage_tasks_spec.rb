require 'rails_helper'

feature 'Manage adding songs', js: true do
  scenario 'add a new song' do
   @artist = Artist.first
   visit artist_path(@artist)

   expect(page).to have_content(@artist.name)


  end
end

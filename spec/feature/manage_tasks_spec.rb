require 'rails_helper'

feature 'Manage adding songs', js: true do

  let!(:artist) {create :artist, name: "Rundek"}
  let!(:song) {create :song, artist: artist, name: "Makedo"}
  let!(:photo) {create :photo, artist: artist}

  scenario 'add a new song' do

   visit artist_path(artist)

   fill_in 'song_name', with: 'Apokalipso'


    page.execute_script("$('form').submit()")


     expect(page).to have_content('Apokalipso')
  end
end

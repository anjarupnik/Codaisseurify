require 'rails_helper'

feature 'Manage adding songs', js: true do

  let!(:artist) {create :artist, name: "Rundek"}
  let!(:song) {create :song, artist: artist, name: "Makedo"}
  let!(:song) {create :song, artist: artist, name: "Ruke"}
  let!(:photo) {create :photo, artist: artist}

  scenario 'add a new song' do

   visit artist_path(artist)

     fill_in 'song_name', with: 'Apokalipso'

     page.execute_script("$('form').submit()")

     expect(page).to have_content('Apokalipso')
  end

  scenario 'delete song' do

   visit artist_path(artist)

   page.accept_confirm do
       click_link 'Delete'
   end

     expect(page).not_to have_content('Makedo')
  end

  scenario 'delete all song' do

   visit artist_path(artist)

       click_link 'Delete All Songs'

     expect(page).not_to have_content('Apokalipso', 'Makedo', 'Ruke')
  end
end

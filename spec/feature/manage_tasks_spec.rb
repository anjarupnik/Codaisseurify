require 'rails_helper'

feature 'Manage adding songs', js: true do
  scenario 'add a new song' do
    artist = Artist.first
    artist_id = artis.id
    visit artist_path(artist.id)

    fill_in 'song_name', with: 'Ten love stories'

      page.execute_script("$('form').submit()")

    expect(page).to have_content('Ten love stories')
  end
end

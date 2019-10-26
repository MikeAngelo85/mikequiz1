require "application_system_test_case"

class NewMusicsTest < ApplicationSystemTestCase
  setup do
    @new_music = new_musics(:one)
  end

  test "visiting the index" do
    visit new_musics_url
    assert_selector "h1", text: "New Musics"
  end

  test "creating a New music" do
    visit new_musics_url
    click_on "New New Music"

    fill_in "Artist", with: @new_music.artist
    fill_in "Description", with: @new_music.description
    fill_in "Genre", with: @new_music.genre
    fill_in "Song", with: @new_music.song
    click_on "Create New music"

    assert_text "New music was successfully created"
    click_on "Back"
  end

  test "updating a New music" do
    visit new_musics_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @new_music.artist
    fill_in "Description", with: @new_music.description
    fill_in "Genre", with: @new_music.genre
    fill_in "Song", with: @new_music.song
    click_on "Update New music"

    assert_text "New music was successfully updated"
    click_on "Back"
  end

  test "destroying a New music" do
    visit new_musics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New music was successfully destroyed"
  end
end

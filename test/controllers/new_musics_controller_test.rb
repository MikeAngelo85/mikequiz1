require 'test_helper'

class NewMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_music = new_musics(:one)
  end

  test "should get index" do
    get new_musics_url
    assert_response :success
  end

  test "should get new" do
    get new_new_music_url
    assert_response :success
  end

  test "should create new_music" do
    assert_difference('NewMusic.count') do
      post new_musics_url, params: { new_music: { artist: @new_music.artist, description: @new_music.description, genre: @new_music.genre, song: @new_music.song } }
    end

    assert_redirected_to new_music_url(NewMusic.last)
  end

  test "should show new_music" do
    get new_music_url(@new_music)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_music_url(@new_music)
    assert_response :success
  end

  test "should update new_music" do
    patch new_music_url(@new_music), params: { new_music: { artist: @new_music.artist, description: @new_music.description, genre: @new_music.genre, song: @new_music.song } }
    assert_redirected_to new_music_url(@new_music)
  end

  test "should destroy new_music" do
    assert_difference('NewMusic.count', -1) do
      delete new_music_url(@new_music)
    end

    assert_redirected_to new_musics_url
  end
end

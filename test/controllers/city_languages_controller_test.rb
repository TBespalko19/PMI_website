require 'test_helper'

class CityLanguagesControllerTest < ActionController::TestCase
  setup do
    @city_language = city_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_language" do
    assert_difference('CityLanguage.count') do
      post :create, city_language: { city_id: @city_language.city_id, lang_id: @city_language.lang_id, title: @city_language.title }
    end

    assert_redirected_to city_language_path(assigns(:city_language))
  end

  test "should show city_language" do
    get :show, id: @city_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_language
    assert_response :success
  end

  test "should update city_language" do
    patch :update, id: @city_language, city_language: { city_id: @city_language.city_id, lang_id: @city_language.lang_id, title: @city_language.title }
    assert_redirected_to city_language_path(assigns(:city_language))
  end

  test "should destroy city_language" do
    assert_difference('CityLanguage.count', -1) do
      delete :destroy, id: @city_language
    end

    assert_redirected_to city_languages_path
  end
end

require 'test_helper'

class StatusLanguagesControllerTest < ActionController::TestCase
  setup do
    @status_language = status_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_language" do
    assert_difference('StatusLanguage.count') do
      post :create, status_language: { lang_id: @status_language.lang_id, status_id: @status_language.status_id, title: @status_language.title }
    end

    assert_redirected_to status_language_path(assigns(:status_language))
  end

  test "should show status_language" do
    get :show, id: @status_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_language
    assert_response :success
  end

  test "should update status_language" do
    patch :update, id: @status_language, status_language: { lang_id: @status_language.lang_id, status_id: @status_language.status_id, title: @status_language.title }
    assert_redirected_to status_language_path(assigns(:status_language))
  end

  test "should destroy status_language" do
    assert_difference('StatusLanguage.count', -1) do
      delete :destroy, id: @status_language
    end

    assert_redirected_to status_languages_path
  end
end

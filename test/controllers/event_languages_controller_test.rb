require 'test_helper'

class EventLanguagesControllerTest < ActionController::TestCase
  setup do
    @event_language = event_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_language" do
    assert_difference('EventLanguage.count') do
      post :create, event_language: { author: @event_language.author, body: @event_language.body, event_id: @event_language.event_id, lang_id: @event_language.lang_id, short_event: @event_language.short_event, title: @event_language.title }
    end

    assert_redirected_to event_language_path(assigns(:event_language))
  end

  test "should show event_language" do
    get :show, id: @event_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_language
    assert_response :success
  end

  test "should update event_language" do
    patch :update, id: @event_language, event_language: { author: @event_language.author, body: @event_language.body, event_id: @event_language.event_id, lang_id: @event_language.lang_id, short_event: @event_language.short_event, title: @event_language.title }
    assert_redirected_to event_language_path(assigns(:event_language))
  end

  test "should destroy event_language" do
    assert_difference('EventLanguage.count', -1) do
      delete :destroy, id: @event_language
    end

    assert_redirected_to event_languages_path
  end
end

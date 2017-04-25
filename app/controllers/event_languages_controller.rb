class EventLanguagesController < ApplicationController
  before_action :set_event_language, only: [:show, :edit, :update, :destroy]

  # GET /event_languages
  # GET /event_languages.json
  def index
    @event_languages = EventLanguage.all
  end

  # GET /event_languages/1
  # GET /event_languages/1.json
  def show
  end

  # GET /event_languages/new
  def new
    @event_language = EventLanguage.new
  end

  # GET /event_languages/1/edit
  def edit
  end

  # POST /event_languages
  # POST /event_languages.json
  def create
    @event_language = EventLanguage.new(event_language_params)

    respond_to do |format|
      if @event_language.save
        format.html { redirect_to @event_language, notice: 'Event language was successfully created.' }
        format.json { render :show, status: :created, location: @event_language }
      else
        format.html { render :new }
        format.json { render json: @event_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_languages/1
  # PATCH/PUT /event_languages/1.json
  def update
    respond_to do |format|
      if @event_language.update(event_language_params)
        format.html { redirect_to @event_language, notice: 'Event language was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_language }
      else
        format.html { render :edit }
        format.json { render json: @event_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_languages/1
  # DELETE /event_languages/1.json
  def destroy
    @event_language.destroy
    respond_to do |format|
      format.html { redirect_to event_languages_url, notice: 'Event language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_language
      @event_language = EventLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_language_params
      params.require(:event_language).permit(:title, :short_event, :body, :author, :event_id, :lang_id)
    end
end

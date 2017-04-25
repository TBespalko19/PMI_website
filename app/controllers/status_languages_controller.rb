class StatusLanguagesController < ApplicationController
  before_action :set_status_language, only: [:show, :edit, :update, :destroy]

  # GET /status_languages
  # GET /status_languages.json
  def index
    @status_languages = StatusLanguage.all
  end

  # GET /status_languages/1
  # GET /status_languages/1.json
  def show
  end

  # GET /status_languages/new
  def new
    @status_language = StatusLanguage.new
  end

  # GET /status_languages/1/edit
  def edit
  end

  # POST /status_languages
  # POST /status_languages.json
  def create
    @status_language = StatusLanguage.new(status_language_params)

    respond_to do |format|
      if @status_language.save
        format.html { redirect_to @status_language, notice: 'Status language was successfully created.' }
        format.json { render :show, status: :created, location: @status_language }
      else
        format.html { render :new }
        format.json { render json: @status_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_languages/1
  # PATCH/PUT /status_languages/1.json
  def update
    respond_to do |format|
      if @status_language.update(status_language_params)
        format.html { redirect_to @status_language, notice: 'Status language was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_language }
      else
        format.html { render :edit }
        format.json { render json: @status_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_languages/1
  # DELETE /status_languages/1.json
  def destroy
    @status_language.destroy
    respond_to do |format|
      format.html { redirect_to status_languages_url, notice: 'Status language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_language
      @status_language = StatusLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_language_params
      params.require(:status_language).permit(:title, :status_id, :lang_id)
    end
end

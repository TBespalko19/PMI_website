class CityLanguagesController < ApplicationController
  before_action :set_city_language, only: [:show, :edit, :update, :destroy]

  # GET /city_languages
  # GET /city_languages.json
  def index
    @city_languages = CityLanguage.all
  end

  # GET /city_languages/1
  # GET /city_languages/1.json
  def show
  end

  # GET /city_languages/new
  def new
    @city_language = CityLanguage.new
  end

  # GET /city_languages/1/edit
  def edit
  end

  # POST /city_languages
  # POST /city_languages.json
  def create
    @city_language = CityLanguage.new(city_language_params)

    respond_to do |format|
      if @city_language.save
        format.html { redirect_to @city_language, notice: 'City language was successfully created.' }
        format.json { render :show, status: :created, location: @city_language }
      else
        format.html { render :new }
        format.json { render json: @city_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_languages/1
  # PATCH/PUT /city_languages/1.json
  def update
    respond_to do |format|
      if @city_language.update(city_language_params)
        format.html { redirect_to @city_language, notice: 'City language was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_language }
      else
        format.html { render :edit }
        format.json { render json: @city_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_languages/1
  # DELETE /city_languages/1.json
  def destroy
    @city_language.destroy
    respond_to do |format|
      format.html { redirect_to city_languages_url, notice: 'City language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_language
      @city_language = CityLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_language_params
      params.require(:city_language).permit(:title, :lang_id, :city_id)
    end
end

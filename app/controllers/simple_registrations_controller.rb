class SimpleRegistrationsController < ApplicationController
  before_action :set_simple_registration, only: [:show, :edit, :update, :destroy]

  # GET /simple_registrations
  # GET /simple_registrations.json
  def index
    @simple_registrations = SimpleRegistration.all
  end

  # GET /simple_registrations/1
  # GET /simple_registrations/1.json
  def show
  end

  # GET /simple_registrations/new
  def new
    @simple_registration = SimpleRegistration.new
  end

  # GET /simple_registrations/1/edit
  def edit
  end

  # POST /simple_registrations
  # POST /simple_registrations.json
  def create
    @simple_registration = SimpleRegistration.new(simple_registration_params)

    respond_to do |format|
      if @simple_registration.save
        format.html { redirect_to @simple_registration, notice: 'Simple registration was successfully created.' }
        format.json { render :show, status: :created, location: @simple_registration }
      else
        format.html { render :new }
        format.json { render json: @simple_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_registrations/1
  # PATCH/PUT /simple_registrations/1.json
  def update
    respond_to do |format|
      if @simple_registration.update(simple_registration_params)
        format.html { redirect_to @simple_registration, notice: 'Simple registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_registration }
      else
        format.html { render :edit }
        format.json { render json: @simple_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_registrations/1
  # DELETE /simple_registrations/1.json
  def destroy
    @simple_registration.destroy
    respond_to do |format|
      format.html { redirect_to simple_registrations_url, notice: 'Simple registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_registration
      @simple_registration = SimpleRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_registration_params
      params.require(:simple_registration).permit(:event_id, :first_name, :last_name, :phone, :email, :company, :city, :comment)
    end
end

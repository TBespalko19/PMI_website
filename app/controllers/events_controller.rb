class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  # GET /events
  # GET /events.json
  def index
    # @events = Event.paginate(:page => params[:page], :per_page => 10)
    @events = Event.all.where('status_id <> 4 and status_id <> 5').paginate(:page => params[:page], :per_page => 10)
    @events_done = Event.all.where('status_id = 4').paginate(:page => params[:page], :per_page => 10)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @event_language = @event.event_languages.first
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.event_languages.build
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to :controller => 'admin', :action => 'index', notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to :controller => 'admin', :action => 'index', notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to :controller => 'admin', :action => 'index', notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:status_id, :city_id, :start_date, :end_date, :duration, 
          :event_languages_attributes => [:id, :title, :short_event, :body, :author, :lang_id])
    end
end

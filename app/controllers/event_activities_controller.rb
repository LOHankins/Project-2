class EventActivitiesController < ApplicationController
  def index
    @eventactivities = Event_Activity.all
    @events = Event.all
  end

  def new
  	@event = Event.find(params[:event_id])
    @eventactivity = Event_Activity.new
  end

  def create
    @event = Event.find(params[:event_id])
    @eventactivity = Event_Activity.new(eventactivity_params)
    @eventactivity.event = @event

    if @eventactivity.save
      redirect_to @event, notice: "#{@eventactivity.title} sucessfully created."
    else
      # flash.now[:alert] = "FAILURE!"
      render "events/show"
    end
  end

  def show
    @eventactivity = Event_Activity.find(params[:id])
  end

  def edit
    @eventactivity = Event_Activity.find(params[:id])
  end

  def update
    @eventactivity = Event_Activity.find(params[:id])
    @event = Event.find(params[:event_id])

    if @eventactivity.update(eventactivity_params)
      redirect_to @eventactivity, notice: "#{@eventactivity.title} sucessfully updated."
    else
      render :edit
    end
  end

  def destroy
    @eventactivity = Event_Activity.find(params[:id])
    @eventactivity.destroy

    redirect_to eventactivitys_path, notice: "#{@eventactivity.title} destroyed."
  end

  private
  def eventactivity_params
    params.require(:eventactivity).permit(:title, :description, :start_time, :end_time, :city, :state, :event_id)
  end
end

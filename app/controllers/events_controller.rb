class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
		@eventactivities = Event_Activity.all
		@eventactivity = Event_Activity.new
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)

		if @event.save
			redirect_to @event, notice: "#{@event.title} succesfully created"
		else
			render :new
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
	  	@event = Event.find(params[:id])

	  if @event.update(event_params)
	    redirect_to @event, notice: "#{@event.title} sucessfully updated."
	  else
	    render :edit
	  end
	end

	def destroy
    # indented too far
	    @event = Event.find(params[:id])
	    @event.destroy

	    redirect_to events_path, notice: "#{@event.title} sucessfully destroyed"
	end

	private
  	def event_params
    	params.require(:event).permit(:title, :start_date, :end_date, :city, :state, :cost, :notes)
  	end
end

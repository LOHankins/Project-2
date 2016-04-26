class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to @contact, notice: "#{@contact.last_name} succesfully created"
		else
			render :new
		end
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
	  	@contact = Contact.find(params[:id])

	  if @contact.update(contact_params)
	    redirect_to @contact, notice: "#{@contact.last_name} sucessfully updated."
	  else
	    render :edit
	  end
	end

	def destroy
	    @contact = Contact.find(params[:id])
	    @contact.destroy

	    redirect_to contacts_path, notice: "#{@contact.last_name} sucessfully destroyed"
	end

	private 
  	def contact_params
    	params.require(:contact).permit(:first_name, :middle_name, :last_name, :title, :address, :city, :state, :zip, :cell_phone, :home_phone, :email, :twitter, :instagram, :hide_pii)
  	end
end

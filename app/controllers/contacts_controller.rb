class ContactsController < ApplicationController
    def index
    	@contacts = Contact.all
    end


	def show #for showing the conatc 
		@contact = Contact.find(params[:id])
    end


	def new #to create new contact us 
		@contact = Contact.new
	end
    
    def create
    	 @contact = Contact.new(contact_params)
		  if @contact.save
		    redirect_to @contact
		  else 
		    render :new
		  end
    end

    private
      def contact_params
         params.require(:contact).permit(:name, :email, :mob, :head, :content)
      end

end
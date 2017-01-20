class ContactsController < ProtectedController
  before_action :set_contact, only: [:show, :update, :destroy]

  def set_contact
    @contact = Contact.find(params[:id])
    @band = current_user.bands.find(@contact.band)
    # @contact = current_user.bands.find(contact_params[:band_id])
                          #  .contacts.find(params[:id])
  end

  def contact_params
    params.require(:contact)
          .permit(:name, :phone_number, :email, :company, :details, :band_id)
  end

  def index
    @contacts = current_user.bands.find(contact_params[:band_id])
                            .contacts

    render json: @contacts
  end

  def show
    render json: @contact
  end

  def create
    @contact = current_user.bands.find(contact_params[:band_id])
                           .contacts.build(contact_params)
    if @contact.save
      render json: @contact, status: :created
    else
      render json: @contact.errors, status: :unprocessible_entity
    end
  end

  def update
    if @contact.update(contact_params)
      head :no_content
    else
      render json: @contact.errors, status: :unprocessible_entity
    end
  end

  def destroy
    @contact.destroy

    head :no_content
  end
end

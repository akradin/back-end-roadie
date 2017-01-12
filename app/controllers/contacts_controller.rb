class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :phone_number, :email, :company, :details)
  end

  def index
    @contacts = Contact.all

    render json: @contacts
  end

  def show
    render json: Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

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

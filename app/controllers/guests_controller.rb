class GuestsController < ApplicationController
  def index
    @guests = Guest.all
    render 'guests/index', guests: @guests
  end

  def create
    name = params['fullName']
    phone = params['phone']
    attending = params['assist']
    partner = params['partner']
    partners_name = params['partnersName']
    children_attending = params['childrens']
    children_quantity = params['childrensQuantity']
    assist_church = params['assistChurch']
    dietary_restrictions = params['dietaryRestrictions']
    dietary_restrictions_indications = params['dietaryRestrictionsIndications']
    other_food_preference = params['otherFoodPreference']
    message = params['message']
    @guest = Guest.new(
      name: name,
      phone: phone,
      attending: attending,
      partner: partner,
      partners_name: partners_name,
      children_attending: children_attending,
      children_quantity: children_quantity,
      assist_church: assist_church,
      dietary_restrictions: dietary_restrictions,
      dietary_restrictions_indications: dietary_restrictions_indications,
      other_food_preference: other_food_preference,
      message: message
    )

    if @guest.save
      # Puedes agregar un mensaje de éxito aquí, si lo deseas
      flash[:notice] = "Gracias por confirmar tu asistencia."
      redirect_to guests_path # Redirige a la lista de invitados
    else
      # Si hay errores, vuelve a la vista index con los errores
      flash.now[:alert] = "Hubo un problema al confirmar tu asistencia."
      render :index
    end
  end
end

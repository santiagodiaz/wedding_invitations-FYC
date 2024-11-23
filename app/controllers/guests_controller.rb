class GuestsController < ApplicationController
  def index
  end

  def create
    @guest = Guest.new(guest_params)

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

  private

  # Permitir solo los parámetros permitidos para crear un invitado
  def guest_params
    params.require(:guest).permit(:name, :email, :attending)
  end
end

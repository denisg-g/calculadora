class WelcomeController < ApplicationController
  def index
  end


def params_vars
  @vars1 = :na,:cpia, :fb, :nb, :cpib, :fa
  @vars2 = :cpia, :fb, :nb, :cpib, :fa
  @vars3 = :fb, :nb, :cpib, :fa
  @vars4 = :nb, :cpib, :fa
  @vars5 = :cpib, :fa
  @vars6 = :fa
end

  def calcular
  	 if (:npor.present? && :cpia.blank? && :fb.blank? && :nb.blank? && :cpib.blank? && :fa.blank?)
       #operacion!!
  		redirect_to root_path, alert: 'Operación registrada '
      #render :json

    elsif !(:npor.blank? && :cpia.blank? && :fb.blank? && :nb.blank? && :cpib.blank? && :fa.blank?)
      redirect_to root_path, alert: 'ingresa al menos un valor papu'
  	end
end

end

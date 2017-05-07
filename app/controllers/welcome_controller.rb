class WelcomeController < ApplicationController
  def index
  end
  def calcular
  	if npor
  		redirect_to root_path, alert: 'npor'
  	end
  end

end

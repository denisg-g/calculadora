class WelcomeController < ApplicationController
  def index
  end


  def calcular
     npor = params[:calcular][:npor].blank? && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].length != 0 && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].length != 0 && params[:calcular][:na].length != 0
  	 na = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].length != 0 && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].length != 0  && params[:calcular][:na].blank?
     fa = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].length != 0 && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].blank?  && params[:calcular][:na].length != 0
     cpib = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].length != 0 && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].blank? && params[:calcular][:fa].length != 0  && params[:calcular][:na].length != 0
     nb = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].length != 0 && params[:calcular][:nb].blank? && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].length != 0  && params[:calcular][:na].length != 0
     fb = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].length != 0 && params[:calcular][:fb].blank? && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].length != 0  && params[:calcular][:na].length != 0
     cpia = params[:calcular][:npor].length != 0 && params[:calcular][:cpia].blank? && params[:calcular][:fb].length != 0 && params[:calcular][:nb].length != 0 && params[:calcular][:cpib].length != 0 && params[:calcular][:fa].length != 0  && params[:calcular][:na].length != 0

     if npor
      var_r1 = params[:calcular][:na].to_f*params[:calcular][:cpia].to_f*params[:calcular][:fb].to_f
       #operacion!!.to_i
      var_r2 = params[:calcular][:nb].to_f*params[:calcular][:cpib].to_f*params[:calcular][:fa].to_f
      var3 = (var_r1/var_r2)-1
      @var4 = (var3*1)
      render :json => @var4.to_json,  :alert => 'Se calculó Na'
    elsif na
      var1 = params[:calcular][:npor].to_f / 1
      var1 = var1 + 1
      var2 = params[:calcular][:nb].to_f * params[:calcular][:cpib].to_f * params[:calcular][:fa].to_f
      var1 = var1 * var2
      var3 = params[:calcular][:cpia].to_f * params[:calcular][:fb].to_f
      var4 = var1 / var3
      render :json => var4.to_json, :alert => 'Se calculó Na'
  	elsif fa
      var1 = params[:calcular][:na].to_f*params[:calcular][:cpia].to_f*params[:calcular][:fb].to_f
      var2 = params[:calcular][:npor].to_f / 1
      var2 = var2 + 1
      var3 = params[:calcular][:nb].to_f * params[:calcular][:cpib].to_f
      var4 = var2 / var3
      render partial: "calc",:json => var4.to_json, :alert => 'Se calculó fa'
    elsif cpib
      var1 = params[:calcular][:na].to_f*params[:calcular][:cpia].to_f*params[:calcular][:fb].to_f
      var2 = params[:calcular][:npor].to_f / 1
      var2 = var2 + 1
      var3 = params[:calcular][:nb].to_f * params[:calcular][:fa].to_f
      var4 = var2 / var3
      render :json => var4.to_json, :alert => 'Se calculó cpib'
    elsif nb
      var1 = params[:calcular][:na].to_f*params[:calcular][:cpia].to_f*params[:calcular][:fb].to_f
      var2 = params[:calcular][:npor].to_f / 1
      var2 = var2 + 1
      var3 = params[:calcular][:cpib].to_f * params[:calcular][:fa].to_f
      var4 = var2 / var3
      render :json => var4.to_json, :alert => 'Se calculó nb'
    elsif fb
      var2 = params[:calcular][:npor].to_f / 1
      var2 = var2 + 1
      var1 = params[:calcular][:nb].to_f*params[:calcular][:cpib].to_f*params[:calcular][:fa].to_f
      var1 = var1 * var2
      var3 = params[:calcular][:na].to_f * params[:calcular][:cpia].to_f
      var4 = var1 / var3
      render :json => var4.to_json, :alert => 'Se calculó fb'
    elsif cpia
      var2 = params[:calcular][:npor].to_f / 1
      var2 = var2 + 1
      var1 = params[:calcular][:nb].to_f*params[:calcular][:cpib].to_f*params[:calcular][:fa].to_f
      var1 = var1 * var2
      var3 = params[:calcular][:na].to_f * params[:calcular][:fb].to_f
      var4 = var1 / var3
      render :json => var4.to_json, :alert => 'Se calculó fb'
    else

    end


end

end

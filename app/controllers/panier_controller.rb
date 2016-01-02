class PanierController < ApplicationController
 
 before_action :authenticate_client!

 def add
  id = params[:id]
   if session[:panier] then
   	 panier = session[:panier]
   	else
   	 session[:panier] = {}
   	 panier = session[:panier]
   end

   if panier[id] then
   	  panier[id] = panier[id] + 1
   else
   	  panier[id] = 1
   end
  redirect_to :action => :index
 end

 def clearPanier
 	session[:panier] = nil
 	redirect_to :action => :index
 end

 def index
  if session[:panier] then
  	@panier = session[:panier]
  else
    @panier = {} 
  end
 end
end

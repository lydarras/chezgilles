class CommandesController < ApplicationController
	#before_action :set_commande

	def index
		@commandes = Commande.all
	end

	def show
	end

	def new
	 @commande = Commande.new
	end

	def create
		@commande = Commande.new(commande_params)
		if @commande.save
			flash[:notice] = "Commande ajouté"
   			redirect_to produits_path
  		else
   			render 'new'
  		end
	end

	#def set_commande
  	# @commande = Commande.find params[:id]
 	#end


	def commande_params
		params.require(:commande).permit(current_client.id,Time.now.strftime("%d %B %Y"),"En cours de paiement")
	end
end

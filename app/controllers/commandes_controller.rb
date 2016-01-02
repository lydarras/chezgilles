class CommandesController < ApplicationController
	#before_action :set_commande

	def index
		@commandes = Commande.all
	end

	def show
	end

	def new
	#@client = Client.find_by_id(params[:id])
	 @commande = Commande.new
	end

	def create
		#@client = Client.find_by_id(params[:id])
		@commande = Commande.new params.require(:commande).permit(:datecom,:etat,:client_id)
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


	#def commande_params
		#params.require(:commande).permit(,Time.now.strftime("%d %B %Y"),"En cours de paiement")
		params.require(:commande).permit(:datecom,:etat,:client_id)
	#end
end

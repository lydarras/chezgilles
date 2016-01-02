class ProduitsController < ApplicationController
 before_action :set_produit, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_client!, only: [:new, :create]

 def index
  @produits = Produit.includes(:categorie, :pay)               
 end

 def show
 end

 def new
  @produit = Produit.new
 end

 def edit
 end

 def update
  if @produit.update produit_params
   redirect_to @produit
  else
   render 'edit'
  end
 end

 def create
  @produit = Produit.new produit_params
  if @produit.save
   redirect_to @produit
  else
   render 'new'
  end
 end

 def destroy
  @produit.destroy
  redirect_to produits_path
 end

 def set_produit
  @produit = Produit.find params[:id]
 end

 def produit_params
  params.require(:produit).permit(:nom, :prix, :description, :categorie_id, :pay_id)
 end

end
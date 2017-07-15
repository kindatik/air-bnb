class ColisController < ApplicationController
   
before_action :set_coli, only: [:show, :edit, :update]  
before_action :authenticate_user!, except: [:show]
    def index
        @colis= current_user.colis
    end    
    
    def new
        @coli = current_user.colis.build
        
    end
    
    def create
        @coli = current_user.colis.build(coli_params)
        if @coli.save
            redirect_to @coli, notice: "Votre annonce a été ajouté avec succès"
        else
            render :new
        end    
    end    
    
    def show
    end     
    
     def edit
     end 
    
     def update
         if @coli.update(coli_params)
             redirect_to @coli, notice: "Modification enregistrée..."
         else
             render :edit
         end    
     end 
    
private
    def set_coli
         @coli = coli.find(params[:id])
    end     
    
    def coli_params
        params.require(:coli).permit(:colis_type, :weight_colis, :price_colis, :summary, :address_departume, :address_arrival,
        :is_weak, :is_urgent)
    end
    
end    
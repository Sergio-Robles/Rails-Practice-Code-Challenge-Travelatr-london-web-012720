class RamonsController < ApplicationController

    def index 
        @ramons = Ramon.all
    end

    def show 
        @ramon = Ramon.find(params[:id])
    end

    def edit 
        @ramon = Ramon.find(params[:id])
    end

    def update 
        @ramon.update(ramon_params)
        redirect_to @ramon
    end

    def new 
        @ramon = Ramon.new
    end

    def create 
        @ramon = Ramon.create(ramon_params)
        redirect_to show_path(@ramon) #or 'posts/:id'
    end
    
    def delete 
        @ramon = Ramon.find(params[:id])
        @ramon.destroy
        redirect_to ramons_path
    end

    private 

    def ramon_params 
        params.require(:ramon).permit(:id, :name, :content)
    end
end

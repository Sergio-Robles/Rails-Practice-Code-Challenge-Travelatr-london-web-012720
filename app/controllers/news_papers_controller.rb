class NewsPapersController < ApplicationController
    
    def index 
        @newspapers = Newspaper.all
    end

    def show 
        @newspaper = Newspaper.find(params[:id])
    end

    def  edit 
        @newspaper = Newspaper.find(params[:id])
    end

    def update 
        @newspaper.update(newspaper_params)
        redirect_to @newspaper
    end

    def new 
        @newspaper = Newspaper.new
    end
    
    def create 
        @newspaper = Newspaper.create(newspaper_params)
        redirect_to show_path(@newspaper)
    end
    
    
    def delete 
        @newspaper = Newspaper.find(params[:id])
        @newspaper.destroy
        redirect_to newspapers_path
    end

    private 

    def newspaper_params 
        params.require(:newspaper).permit(:id, :name, :content)
    end
end

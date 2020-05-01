class BloggersController < ApplicationController

    def index 
        @bloggers = Blogger.all
    end

    def show 
        @blogger = Blogger.find(params[:id])
    end

    def new 
        @blogger = Blogger.new
    end

    # def edit 
    #     @blogger = Blogger.find(params[:id])
    # end

    def create 
        @blogger = Blogger.create(blogger_params) 
        @blogger.save
        if @blogger.valid?
            redirect_to "/bloggers/#{@blogger.id}"
        else             
            redirect_to blogger_path_route_path #this is specified on routes file
    
        end

        # def update 
        #     @blogger = Blogger.find(params[:id])
        #     @blogguer.update(blogger_params(:name, :bio, :age))
        #     redirect_to "/bloggers/#{@blogger.id}"
        # end
    end


    private 

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end

end

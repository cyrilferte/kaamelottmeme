class MemesController < ApplicationController
    
    def index
      @memes = Meme.all
    end

    def show
        @meme = Meme.find(params[:id])
    end

    def new
        @meme = Meme.new
    end
  
    def create
        @meme = Meme.new(meme_params)
        if @meme.save
            redirect_to memes_path
        else
            render :new
        end
    end

    def edit
        @meme = Meme.find(params[:id])
    end
    
    def update
        @meme = Meme.find(params[:id])
        if @meme.update(meme_params)
            redirect_to memes_path
        else
            render :edit
        end
    end

    def destroy
        @meme = meme.find(params[:id])
        @meme.destroy
        redirect_to memes_path
    end

    
    private
    def meme_params
        params.require(:meme).permit(:image_id, :toptext, :bottomtext, :title)
    end


end

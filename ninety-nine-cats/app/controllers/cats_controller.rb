class CatsController < ApplicationController
    def index 
        @cats = Cat.all
        render :index
    end

    def create
        cat = Cat.new(cat_params)
        if cat.save 
            render json: cat
        else 
            render json: cat.errors.full_messages, status: 422
        end
    end

    def show 
        @cat = Cat.find_by(id: params[:id])
        render :show
    end

    def update 
        cat = cat.find_by(id: params[:id])
        cat.update!(cat_params)
        render json: cat
    end

    def edit 
        cat = Cat.find_by(id: params[:id])
        render json: cat
    end

    def new
        @cat = Cat.new()
        render :new
    end

    private
    def cat_params
        params.require(:cats).permit(:birth_date, :color, :name, :sex)
    end
end
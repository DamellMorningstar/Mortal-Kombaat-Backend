class FightersController < ApplicationController
    def index 
        fighters = Fighter.all
        render json: fighters
    end

    def create 
        fighter = Fighter.create(fighter_params)
        render json: fighter
    end 

    def show  
        fighter = Fighter.find(fighter_params)
        render json: fighter
    end

    def delete 
        fighter = Fighter.find(params[:fightername])
        fighter.destroy
    end

    def login
        fighter = Fighter.first 
        render json: fighter
    end

    private

    def fighter_params 
        params.require(:fighter).permit(:username, :cellnum, :details, :weightclass, :image )
    end



end

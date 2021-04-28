class FightsController < ApplicationController
    def index 
        fights = Fight.all
        render json: fights
    end

    def create 
        fight = Fight.create(fight_params)
    end 

    def show  
        fight = Fight.find(fight_params)
        render json: fight
    end

    def update
        fight = Fight.find(params[:id])
        fight.update(fight_params)
        render json: fight
    end

    def delete 
        fight = Fight.find(params[:fightname])
        fight.destroy
    end

    private

    def fight_params 
        params.require(:fight).permit(:wage, :fighter_id, :fightee_id, :fightday)
    end

end

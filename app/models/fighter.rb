class Fighter < ApplicationRecord
    has_many :fights 
    has_many :fightees, through: :fights
end

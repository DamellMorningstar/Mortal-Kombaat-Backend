class Fight < ApplicationRecord
    belongs_to :fighter 
    belongs_to :fightee, :class_name => "Fighter"
end

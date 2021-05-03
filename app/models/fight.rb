class Fight < ApplicationRecord
  belongs_to :fighter, class_name: 'User'
  belongs_to :fightee, class_name: 'User'
end

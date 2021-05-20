class User < ApplicationRecord
  has_secure_password

  has_many :fighters_fights, class_name: 'Fight', foreign_key: 'fighter_id'
  has_many :fightees_fights, class_name: 'Fight', foreign_key: 'fightee_id'

  validates :username, uniqueness: { case_sensitive: false }
end

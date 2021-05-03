class FightSerializer < ActiveModel::Serializer
  attributes :id, :fightday, :wage
  has_one :fighter
  has_one :fightee
end

class FightSerializer < ActiveModel::Serializer
  attributes :id, :fighter_id, :fightee_id, :wage, :fightday
end

class FighterSerializer < ActiveModel::Serializer
  attributes :id, :username, :weightclass, :cellnum, :details, :image
end

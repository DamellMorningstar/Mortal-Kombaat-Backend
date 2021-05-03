class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :cellnum, :weightclass, :fightstyle, :image, :password_digest
end

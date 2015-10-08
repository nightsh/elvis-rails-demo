class AccountSerializer < ActiveModel::Serializer
  attributes :id, :bio, :avatar, :url, :display_name
end

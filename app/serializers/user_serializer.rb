class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :uuid, :created_at, :updated_at
end

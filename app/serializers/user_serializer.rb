class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :address_line1, :address_line2, :address_line3, :address_line4
end

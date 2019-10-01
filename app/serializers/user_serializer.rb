class UserSerializer < ActiveModel::Serializer
    attributes :first_name, :last_name, :email, :profile_photo, :location
  end
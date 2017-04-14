class PictureSerializer < ActiveModel::Serializer

  attributes :id, :name, :image
  has_one :job

end

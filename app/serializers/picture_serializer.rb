class PictureSerializer < ActiveModel::Serializer
  has_one :job

  attributes :id, :name, :image, :image_src

  def image_src
    object.image.url
  end

end

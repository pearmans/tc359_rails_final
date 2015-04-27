class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      where('LOWER(title) LIKE LOWER(?)', "%#{search}%")
    else
      all
    end
  end
end

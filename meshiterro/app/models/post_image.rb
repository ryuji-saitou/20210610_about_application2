class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image #カラム名はimage_idだが "_id" は不要
end

class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre
    belongs_to :user
    has_one_attached :image
    with_options presence: true do
      validates :shop_name , length: { maximum: 40 }
      validates :profile,    length: { maximum: 400 }
      validates :p_code,     format: { with: /\A\d{3}[-]\d{4}\z/}
      validates :city
      validates :address
        with_options numericality: { other_than: 1 } do
          validates :genre_id
          validates :prefecture_id
        end
    end
end

class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre
    belongs_to :choise_a
    belongs_to :choise_b
    belongs_to :choise_c
    belongs_to :user
    belongs_to :prefecture
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
          validates :choise_a_id
        end
    end
end

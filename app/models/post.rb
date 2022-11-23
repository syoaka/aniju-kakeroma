class Post < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :area_id, numericality: { other_than: 1, message: 'を選択してください'}
  end

end

class Post < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :area_id, numericality: { other_than: 1, message: 'を選択してください'}
  end

end

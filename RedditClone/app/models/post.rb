class Post < ApplicationRecord
  validates :title, presence: true

  has_many :post_subs

  has_many :subs,
           through: :post_subs

  belongs_to :author,
             class_name: :User,
             primary_key: :id,
             foreign_key: :user_id
end

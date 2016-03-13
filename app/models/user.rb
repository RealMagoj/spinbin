class User < ActiveRecord::Base

  serialize :genre, Array

  validates :dj_name,
    presence: true
  validates :genre,
    presence: true,
    length: { maximum: 3 }
  validates :bio,
    presence: true,
    length: { maximum: 140 }
  # validates :venues,
  #   presence: true,
  #   length: { maximum: 3 }
end
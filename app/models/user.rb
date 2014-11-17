
class User < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :profile_pic_url, presence: true
end

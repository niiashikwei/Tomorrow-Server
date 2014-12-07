
class User < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false
  validates :age, presence: true, allow_blank: false
  validates :profile_pic_url, presence: true, allow_blank: false
end

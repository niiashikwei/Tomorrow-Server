class Activity < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false
  validates :min_team_size, presence: true, allow_blank: false
  validates :max_team_size, presence: true, allow_blank: false
end

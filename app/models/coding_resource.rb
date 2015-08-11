class CodingResource < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :level
end

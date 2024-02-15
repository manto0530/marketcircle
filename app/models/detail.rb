class Detail < ApplicationRecord
    belongs_to :master
    validates :description, presence: true
end

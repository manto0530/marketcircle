class Master < ApplicationRecord
    has_many :details
    validates :name, :email, presence: true
end

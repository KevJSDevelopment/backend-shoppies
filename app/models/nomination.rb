class Nomination < ApplicationRecord
    validates :title, presence: true
    validates :year, presence: true
end

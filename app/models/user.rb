class User < ApplicationRecord
    has_many :nominations
    has_many :movies, through: :nominations
end

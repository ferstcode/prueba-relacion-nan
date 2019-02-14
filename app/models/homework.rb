class Homework < ApplicationRecord
    has_many :homework_users, dependent: :destroy
    has_many :users, through: :homework_users
end

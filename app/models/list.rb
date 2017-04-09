class List < ActiveRecord::Base
    has_many :single_sorts
    has_many :books, through: :single_sorts
end

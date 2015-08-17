class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :year_of_birth, presence: true
end

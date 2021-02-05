class Department < ApplicationRecord
    has_many :scripts
    has_many :users, through: :scripts
    validates :name, presence: true, uniqueness: true
    
    accepts_nested_attributes_for :users, :scripts, reject_if: :all_blank
end

class Department < ApplicationRecord
    has_many :scripts
    validates :name, presence: true, uniqueness: true

    accepts_nested_attributes_for :scripts, reject_if: :all_blank
end
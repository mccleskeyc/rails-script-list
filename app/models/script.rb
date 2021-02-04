class Script < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    belongs_to :department

    accepts_nested_attributes_for :department, reject_if: :all_blank

    def department_name
        self.department ? self.department.name : "Format Not Available"
    end
end

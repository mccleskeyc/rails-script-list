class Script < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    belongs_to :department
    belongs_to :user

    accepts_nested_attributes_for :user, :department, reject_if: :all_blank

    def department_name
        self.department ? self.department.name : "Format Not Available"
    end

    def order_by_length
        Script.order("LENGTH(logline) ASC").limit(3)
    end

end

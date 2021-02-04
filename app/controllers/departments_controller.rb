class DepartmentsController < ApplicationController

    def new
        @department = Department.new
        @department.scripts.build
    end

    def create

    end

    private
    def department_params
        params.require(:department).permit(:name, script_attributes: [:title, :logline])
    end
end

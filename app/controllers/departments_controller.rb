class DepartmentsController < ApplicationController

    def new
        @department = Department.new
    
        @department.scripts.build
        @department.scripts.build
        @department.scripts.build
      end
    
      def create
        @department = Department.new(department_params)
    
        if @department.save
          redirect_to scripts_path
        else
          render :new
        end
      end
    
    
      private
    
        def department_params
          params.require(:department).permit(
            :name,
            scripts_attributes: [:title, :logline]
          )
        end
    end

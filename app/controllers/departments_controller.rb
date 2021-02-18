class DepartmentsController < ApplicationController
    before_action :require_login
    def index
        @departments = Department.all
    end

    def show
        @department = Department.find_by_id(params[:id])
    end


    def new
        @department = Department.new
        @department.scripts.build
      end
    
      def create
        @department = Department.new(department_params)
    
        if @department.valid? 
          @department.save
          redirect_to departments_path
        else
          flash.now[:error] = @department.errors.full_messages
          render :new
        end
      end
    
      private
    
        def department_params
          params.require(:department).permit(
            :name, :script_id, :user_id,
            scripts_attributes: [:title, :logline, :user_id],
          )
        end

        def require_login
            unless user_signed_in?
              redirect_to new_user_session_path 
            end
          end
    end

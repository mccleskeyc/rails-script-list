class ScriptsController < ApplicationController
    before_action :require_login
    before_action :find_department, only: [:index, :new, :create, :show] 
    before_action :find_script, only: [:show, :edit, :update, :destroy]
 
    def index
        if @department
            @scripts = @department.scripts
        else
            @scripts = Script.all 
        end
    end

    def show
        # require_login, # find_department, # find_script
    end

    def new
        if @department 
            @script = @department.scripts.build
            render :new_department_script
        else
        @script = current_user.scripts.build
        end
    end

    def create
        @script = current_user.scripts.build(script_params)
        if @script.valid?
            @script.save
            redirect_to scripts_path
        else
            flash.now[:error] = @script.errors.full_messages
            if @department
                render :new_department_script
            else
            render :new
            end
        end
    end

    def edit
        # require_login, # find_script
    end

    def update
        if @script.update(script_params)
            redirect_to script_path(@script)
        else
            flash.now[:error] = @script.errors.full_messages
            render :edit
        end
    end

    def destroy
        @script.destroy
        flash[:notice] = "#{@script.title} was deleted."
        redirect_to scripts_path
    end

    def sort_loglines
        @scripts = Script.order_by_length
    end

  

    private
    def find_script
        @script = Script.find_by_id(params[:id])
    end

    def find_department
        if params[:department_id]
            @department = Department.find_by_id(params[:department_id])
        end
    end

    def script_params
        params.require(:script).permit(:title, :department_id, :user_id, :logline, department_attributes:[:name])
    end

    def require_login
        unless user_signed_in?
          redirect_to new_user_session_path 
        end
    end

end

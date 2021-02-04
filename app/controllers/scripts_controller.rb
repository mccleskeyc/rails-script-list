class ScriptsController < ApplicationController
    before_action :find_script, only: [:show, :edit, :update, :destroy]
    def index
        @scripts = Script.all 
    end

    def show
    end

    def new
        @script = current_user.scripts.build
    end

    def create
        @script = current_user.scripts.build(script_params)
        if @script.save
            redirect_to scripts_path
        else
            flash.now[:error] = @script.errors.full_messages
            render :new
        end
    end

    def edit
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

    private
    def find_script
        @script = Script.find_by_id(params[:id])
    end

    def script_params
        params.require(:script).permit(:title, :department_id, :user_id, :logline, department_attributes:[:name])
    end
end

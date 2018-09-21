class WidgetsController < ApplicationController

    def index
        @widget = Widget.new
        @widgets = Widget.all
    end

    def create
        @widget = Widget.new(widget_params)
        if @widget.save
          flash[:success] = "Object successfully created"
          redirect_to root_path
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def show
        @widget = @widget.find(params[:id])
    end

    def destroy
        @widget = Widget.find(params[:id])
        if @widget.destroy
            redirect_to root_path
        else
            redirect_to root_path
        end
    end



    private

    def widget_params
        params.require(:widget).permit(:description, :quantity)
    end


end
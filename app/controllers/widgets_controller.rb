class WidgetsController < ApplicationController
  def new
    @widget = Widget.new
  end

  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def widget_params
    params.require(:widget).permit(:name, :category, :price, :bought)
  end
end

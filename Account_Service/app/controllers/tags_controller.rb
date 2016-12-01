class TagsController < ApplicationController

  def index
    render json: Tag.order(name: :asc)
  end

  def show
    @tag = Tag.find(params[:id])
  end
end

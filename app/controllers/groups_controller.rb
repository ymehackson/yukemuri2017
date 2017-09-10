class GroupsController < ApplicationController

  def setup
  end

  def index
    @groups = Group.all
    # //paginate(page: params[:page])
    @groupcategories = GroupCategory.all

    @categories = Category.all
  end

  def show
    @group = Group.find(params[:id])
    @groupcategory = GroupCategory.find(params[:id])
  end
end

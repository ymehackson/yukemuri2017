class GroupsController < ApplicationController
  def index
    @groups = Group.all
    # //paginate(page: params[:page])
  end

  def show
    @group = Group.find(params[:id])
  end
end

class UsersController < ApplicationController
  def new
    @user = User.new
    @prefectures = YAML.load_file('prefectures.yml').keys
  end

  def create
    User.create(user_params)
  end

  def select
    @pictures = Picture.all
    User.find(1).pictures
    if (false)
      # redirect_to :group
    end
  end

  def choose
    PictureUser.where(user_id: 1, picture_id: params[:picture_id]).first_or_create(user_id: 1, picture_id: params[:picture_id])
    redirect_to '/users/select'
  end

  private

  def user_params
    parse_prefecture(params.require(:user)[:location])
    params.require(:user)[:location] = parse_prefecture(params.require(:user)[:location])
    params.require(:user).permit(:name, :birthday, :real_type, :location, :image)
  end

  def parse_prefecture(prefecture)
    YAML.load_file('prefectures.yml')[prefecture]
  end
end

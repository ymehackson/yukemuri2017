class UsersController < ApplicationController
  def new
    @user = User.new
    @prefectures = YAML.load_file('prefectures.yml').keys
  end

  def create
    User.create(user_params)
  end

  private

  def user_params
    parse_prefecture(params.require(:user)[:location])
    params.require(:user)[:location] = parse_prefecture(params.require(:user)[:location])
    params.require(:user).permit(:name, :birthday, :real_type, :location, :image)
  end

  def parse_prefecture(prefecture)
    a = YAML.load_file('prefectures.yml')[prefecture]
  end
end
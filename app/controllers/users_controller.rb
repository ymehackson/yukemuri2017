class UsersController < ApplicationController
  def new
    @user = User.new
    @prefectures = YAML.load_file('prefectures.yml').keys
  end

  def create
    User.create(user_params)
    redirect_to '/users/select'
  end

  def select
    @pictures = Picture.all
    case Picture.last.value
    when 1
      @pic1 = '/assets/pic5.jpg'
      @pic2 = '/assets/pic4.jpg'
    when 2
      @pic1 = '/assets/pic3.jpg'
      @pic2 = '/assets/pic2.jpg'
    when 3
      @pic1 = '/assets/01/icon.jpg'
      @pic2 = '/assets/01/sub_1.jpg'
    when 4
      @pic1 = '/assets/01/sub_2.jpg'
      @pic2 = '/assets/02/sub_2.jpg'
    when 5
      @pic1 = '/assets/05/icon.jpg'
      @pic2 = '/assets/05/top.jpg'
    when 6
      @pic1 = '/assets/pic5.jpg'
      @pic2 = '/assets/pic4.jpg'
    else
      @pic1 = '/assets/pic6.jpg'
      @pic2 = '/assets/pic7.jpg'
    end
  end

  def choose
    PictureUser.where(user_id: 1, picture_id: params[:picture_id]).first_or_create(user_id: 1, picture_id: params[:picture_id])
    pic = Picture.last
    pic.value += 1
    pic.save
    if (pic.value >= 6)
       redirect_to '/users/result' and return
    end
    redirect_to '/users/select'
  end

  def result
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

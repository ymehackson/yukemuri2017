module GroupsHelper
  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user)
    gravatar_id  = Digest::MD5::hexdigest(user.image)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  # 引数で与えられたユーザーの画像を返す
  def imageIcon(user, size:100)
    gravatar_url = "/assets/0#{user.id}/icon?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar" , size:size)
  end

  def imageTop(user)
    # gravatar_id = Digest::MD5::hexdigest(user.image)
    gravatar_url = "/assets/0#{user.id}/top"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def imageSub1(user)
    gravatar_url = "/assets/0#{user.id}/sub_1"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def imageSub2(user)
    gravatar_url = "/assets/0#{user.id}/sub_2"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end

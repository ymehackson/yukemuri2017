module GroupsHelper
  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user)
    gravatar_id  = Digest::MD5::hexdigest(user.image)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  # 引数で与えられたユーザーの画像を返す
  def imageUser(user)
    # gravatar_id = Digest::MD5::hexdigest(user.image)
    gravatar_url = "/assets/#{user.id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end

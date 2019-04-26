module AvatarHelper
  def avatar_url(user)
    if gravatar?(user)
      gravatar = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar}.png?s=200"
    else
      'default_avatar.png'
    end
  end

  def gravatar?(user)
    gravatar = Digest::MD5::hexdigest(user.email).downcase
    gravatar_check = "http://gravatar.com/avatar/#{gravatar}.png?d=404"
    uri = URI.parse(gravatar_check)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    response.code.to_i != 404
  end
end

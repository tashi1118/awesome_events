class Api::AuthController < ApplicationController
  def sign_in
    # corsエラー
    # redirect_to = "/auth/github"
    # 時間かかる上に安定しない
    # redirect_url = Net::HTTP.get_response(URI.parse(src_url))['location']
    protocol = request.protocol
    host = request.host_with_port
    auth_link = "auth/github"

    render json: {
      protocol: protocol,
      host: host,
      auth_link: auth_link
    }
  end
end

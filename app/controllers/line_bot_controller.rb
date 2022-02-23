class LineBotController < ApplicationController
# callbackアクションではCSRF対策を無効化する
protect_from_forgery except:[:callback]

  def callback
    # POSTリクエストのbody部分のみを参照
    body = request.body.read
  end

  private

  def client
    @client ||= Line::Bot::Client.new{ |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end
end

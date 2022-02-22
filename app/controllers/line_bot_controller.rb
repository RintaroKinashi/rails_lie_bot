class LineBotController < ApplicationController
# callbackアクションではCSRF対策を無効化する
protect_from_forgery except:[:callback]

  def callback
  end
end

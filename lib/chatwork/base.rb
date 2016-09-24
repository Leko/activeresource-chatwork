require 'uri'
require 'json'
require 'active_resource'
require 'active_resource/formats/json_format'

module Chatwork
  #
  # Chatwork API用のフォーマッター
  #
  # 送信は`x-www-form-urlencoded`に対しデコードは`application/json`という特殊な要件
  # を吸収するために実装した。Chatwork以外で使用するケースはないと判断しここに置いている
  class FormToJsonParser
    include ActiveResource::Formats::JsonFormat

    def mime_type
      "application/x-www-form-urlencoded"
    end

    def decode(json)
      ActiveSupport::JSON.decode(json)
    end
  end

  #
  # ChatworkのAPI通信をする際の基底クラス
  #
  # APIキーの設定やフォーマッタの設定など、共通で必要な設定をここで行う
  # Chatwork APIを扱う際にはこのクラスを継承すること
  class Base < ActiveResource::Base
    headers["X-ChatWorkToken"] = ENV['CHATWORK_TOKEN']

    self.site = 'https://api.chatwork.com/v1'
    self.format = FormToJsonParser.new
    self.include_format_in_path = false

    def to_json(options = {})
      json = if include_root_in_json
               super({ root: self.class.element_name }.merge(options))
             else
               super(options)
             end
      hash = JSON.load(json)

      URI.encode_www_form(hash)
    end
  end
end

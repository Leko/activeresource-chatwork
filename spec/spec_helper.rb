$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'chatwork'
require 'dotenv'
require 'simplecov'

Dotenv.load

SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/spec/'
end

# テスト用にロガーを差し込む
module Chatwork
  class Base
    self.logger = Logger.new(STDERR)
  end
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'chatwork'
require 'dotenv'
require 'simplecov'
require 'codecov'

Dotenv.load

SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/spec/'
end
SimpleCov.formatter = SimpleCov::Formatter::Codecov

# テスト用にロガーを差し込む
module Chatwork
  class Base
    self.logger = Logger.new(STDERR)
  end
end

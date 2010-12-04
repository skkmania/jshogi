require 'rubygems'
require 'sinatra'
require 'msgpack'
require 'json'
require 'logger'

  class Hash
    # keyの配列を渡すと、その順に並べたvalueの配列を返す
    # 値の存在しないkeyが含まれると、その場所にはnilがはいる
    def to_a_with_order(ary)
      ary.inject([]){|res, e| res.push self[e].to_s }
    end
  end

set :port, 4568

configure do
  LOGGER = Logger.new("log/sinatra.log") 
  LOGGER2 = Logger.new('log/shogi.log')
end
 
helpers do
  def logger
    LOGGER
  end
  def logger2
    LOGGER2
  end
end


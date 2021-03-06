$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'native_ext_fetcher'

require 'minitest/autorun'
require 'fakefs/safe'

class Minitest::Test
  def self.test(name, &block)
    define_method "test_#{name.gsub(/\s+/, '_')}", &block
  end

  def self.setup(&block)
    define_method :setup, &block
  end

  def self.teardown(&block)
    define_method :teardown, &block
  end
end

# frozen_string_literal: true
require 'test_helper'

class TestConfiguration < Test::Unit::TestCase
  include TestHelpers

  test 'that url is required' do
    assert_raise Fluent::ConfigError do
      create_driver ''
    end
  end

  test 'that url scheme must be either http or https' do
    assert_raise Fluent::ConfigError do
      create_driver 'url ws://example.org/'
    end
  end

  test 'that url must be valid' do
    assert_raise Fluent::ConfigError do
      create_driver 'url %'
    end
  end

  test 'that valid url with http scheme is acceptable' do
    driver = create_driver 'url http://example.org/'

    assert_equal URI('http://example.org/'), driver.instance.url
  end

  test 'that valid url with https scheme is acceptable' do
    driver = create_driver 'url https://example.org/'

    assert_equal URI('https://example.org/'), driver.instance.url
  end
end
require 'helper'

class TestFastAPI < FastAPI::TestCase
  def setup
    @fast_api = FastAPI.new String
  end

  def test_new_sets_defaults
    assert_equal nil, @fast_api.data
    assert_equal 'null', @fast_api.data_json
    assert_equal nil, @fast_api.meta
    assert_equal 'null', @fast_api.meta_json
    assert_equal Hash[meta: nil, data: nil], @fast_api.to_hash
    assert_equal '{"meta":null,"data":null}', @fast_api.response
    assert_equal '{"meta":{"total":0,"offset":0,"count":0,"error":"Access denied"},"data":[]}', @fast_api.reject
  end
  
  def test_inspect_with_class_returns_string
    fast_api = FastAPI.new Class
    assert_equal "<FastAPI: Class>", fast_api.inspect
  end
  
  def test_inspect_with_instance_returns_string
    test = Class.new
    fast_api = FastAPI.new test
    assert_equal "<FastAPI: #{test}>", fast_api.inspect
  end
end

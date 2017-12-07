require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Bikers.com"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "ツーリングマップ | Bikers.com"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "管理人 | Bikers.com"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "リンク | Bikers.com"
  end
end
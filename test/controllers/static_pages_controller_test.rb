require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
      @ror = "Ruby on Rails"
  end
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title","Home | #{@ror}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title","Help | #{@ror}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title","About | #{@ror}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title","Contact | #{@ror}"
  end

end

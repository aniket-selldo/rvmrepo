require "test_helper"

class AnniketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anniket = annikets(:one)
  end

  test "should get index" do
    get annikets_url
    assert_response :success
  end

  test "should get new" do
    get new_anniket_url
    assert_response :success
  end

  test "should create anniket" do
    assert_difference("Anniket.count") do
      post annikets_url, params: { anniket: { description: @anniket.description, title: @anniket.title } }
    end

    assert_redirected_to anniket_url(Anniket.last)
  end

  test "should show anniket" do
    get anniket_url(@anniket)
    assert_response :success
  end

  test "should get edit" do
    get edit_anniket_url(@anniket)
    assert_response :success
  end

  test "should update anniket" do
    patch anniket_url(@anniket), params: { anniket: { description: @anniket.description, title: @anniket.title } }
    assert_redirected_to anniket_url(@anniket)
  end

  test "should destroy anniket" do
    assert_difference("Anniket.count", -1) do
      delete anniket_url(@anniket)
    end

    assert_redirected_to annikets_url
  end
end

require "test_helper"

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url, as: :json
    assert_response :success
  end

  test "should create house" do
    assert_difference("House.count") do
      post houses_url, params: { house: { address: @house.address, bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, country: @house.country, description: @house.description, image: @house.image, image_lg: @house.image_lg, name: @house.name, price: @house.price, surface: @house.surface, type: @house.type, year: @house.year } }, as: :json
    end

    assert_response :created
  end

  test "should show house" do
    get house_url(@house), as: :json
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: { address: @house.address, bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, country: @house.country, description: @house.description, image: @house.image, image_lg: @house.image_lg, name: @house.name, price: @house.price, surface: @house.surface, type: @house.type, year: @house.year } }, as: :json
    assert_response :success
  end

  test "should destroy house" do
    assert_difference("House.count", -1) do
      delete house_url(@house), as: :json
    end

    assert_response :no_content
  end
end

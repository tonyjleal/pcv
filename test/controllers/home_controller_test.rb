require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get localizacion" do
    get :localizacion
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end

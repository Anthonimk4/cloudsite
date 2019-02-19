require 'test_helper'

class ArchivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archivo = archivos(:one)
  end

  test "should get index" do
    get archivos_url, as: :json
    assert_response :success
  end

  test "should create archivo" do
    assert_difference('Archivo.count') do
      post archivos_url, params: { archivo: { name: @archivo.name } }, as: :json
    end

    assert_response 201
  end

  test "should show archivo" do
    get archivo_url(@archivo), as: :json
    assert_response :success
  end

  test "should update archivo" do
    patch archivo_url(@archivo), params: { archivo: { name: @archivo.name } }, as: :json
    assert_response 200
  end

  test "should destroy archivo" do
    assert_difference('Archivo.count', -1) do
      delete archivo_url(@archivo), as: :json
    end

    assert_response 204
  end
end

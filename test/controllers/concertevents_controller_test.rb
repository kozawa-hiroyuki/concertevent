require 'test_helper'

class ConcerteventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concertevent = concertevents(:one)
  end

  test "should get index" do
    get concertevents_url
    assert_response :success
  end

  test "should get new" do
    get new_concertevent_url
    assert_response :success
  end

  test "should create concertevent" do
    assert_difference('Concertevent.count') do
      post concertevents_url, params: { concertevent: { datetime: @concertevent.datetime, description: @concertevent.description, member: @concertevent.member, name: @concertevent.name } }
    end

    assert_redirected_to concertevent_url(Concertevent.last)
  end

  test "should show concertevent" do
    get concertevent_url(@concertevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_concertevent_url(@concertevent)
    assert_response :success
  end

  test "should update concertevent" do
    patch concertevent_url(@concertevent), params: { concertevent: { datetime: @concertevent.datetime, description: @concertevent.description, member: @concertevent.member, name: @concertevent.name } }
    assert_redirected_to concertevent_url(@concertevent)
  end

  test "should destroy concertevent" do
    assert_difference('Concertevent.count', -1) do
      delete concertevent_url(@concertevent)
    end

    assert_redirected_to concertevents_url
  end
end

require "application_system_test_case"

class ConcerteventsTest < ApplicationSystemTestCase
  setup do
    @concertevent = concertevents(:one)
  end

  test "visiting the index" do
    visit concertevents_url
    assert_selector "h1", text: "Concertevents"
  end

  test "creating a Concertevent" do
    visit concertevents_url
    click_on "New Concertevent"

    fill_in "Datetime", with: @concertevent.datetime
    fill_in "Description", with: @concertevent.description
    fill_in "Member", with: @concertevent.member
    fill_in "Name", with: @concertevent.name
    click_on "Create Concertevent"

    assert_text "Concertevent was successfully created"
    click_on "Back"
  end

  test "updating a Concertevent" do
    visit concertevents_url
    click_on "Edit", match: :first

    fill_in "Datetime", with: @concertevent.datetime
    fill_in "Description", with: @concertevent.description
    fill_in "Member", with: @concertevent.member
    fill_in "Name", with: @concertevent.name
    click_on "Update Concertevent"

    assert_text "Concertevent was successfully updated"
    click_on "Back"
  end

  test "destroying a Concertevent" do
    visit concertevents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concertevent was successfully destroyed"
  end
end

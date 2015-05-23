require "test_helper"

class WelcomeHomeTest < Capybara::Rails::TestCase

  test 'welcome index page' do
    visit root_path
    assert_selector 'h1', text: "Welcome!"
    assert_link "all artworks"
  end

  test 'link to all artworks' do
    visit root_path
    click_link "all artworks"
    assert_equal artworks_path, current_path
  end
end

require "test_helper"

class ListArtworksTest < Capybara::Rails::TestCase

  def test_listing_artworks
    visit artworks_path
    assert_selector "h1", "All Artworks"
    assert_text artworks(:one).name
    assert_text artworks(:two).name
  end
end

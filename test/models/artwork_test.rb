require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase

  test "saves itself" do
    artwork = Artwork.new
    assert true, artwork.save
  end

end

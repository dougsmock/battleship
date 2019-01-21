require "minitest/autorun"
require_relative "bship.rb"

class HashSize < Minitest::Test
    def test_if_hyphens_spaces_out13
        assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3"], remove_hyphens_spaces("123-45-6789 0123"))
    end

end
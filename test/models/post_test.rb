require "test_helper"

class PostTest < ActiveSupport::TestCase
   test "post must have a title" do
      post = Post.new(title: "")
      refute post.valid?
      assert_includes post.errors[:title], "can't be blank"
   end
end

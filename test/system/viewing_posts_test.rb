require "application_system_test_case"

class ViewingPostsTest < ApplicationSystemTestCase
  test "a reader can view a post title" do
    Post.create(title: 'Hello World', body: 'This is the body of the post')

    visit "/"

    assert_text "Hello World"
  end
end

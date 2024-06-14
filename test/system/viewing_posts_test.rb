require "application_system_test_case"

class ViewingPostsTest < ApplicationSystemTestCase
  test "a reader can view a post title" do
    Post.create(title: 'Hello World')

    visit "/"

    assert_selector "h1", text: "Hello World"
  end
end

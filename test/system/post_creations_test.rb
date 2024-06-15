require "application_system_test_case"

class PostCreationsTest < ApplicationSystemTestCase
   test "creating a post with a title show an error message" do
     visit new_post_url

     fill_in "Title", with: ""

     click_on "Create Post"

     assert_text "Title can't be blank"
   end
end

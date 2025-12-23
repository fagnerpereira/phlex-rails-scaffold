require "test_helper"
require "generators/phlex/scaffold_controller/scaffold_controller_generator"

class ScaffoldControllerGeneratorTest < PhlexGeneratorTestCase
  tests Phlex::Generators::ScaffoldControllerGenerator
  arguments %w(Post title:string content:text)

  def setup
    copy_routes
    super
  end

  def test_controller_renders_phlex_views
    run_generator

    assert_file "app/controllers/posts_controller.rb" do |content|
      assert_match(/class PostsController < ApplicationController/, content)

      # Index
      assert_match(/render Views::Posts::Index.new\(posts: @posts\)/, content)

      # Show
      assert_match(/render Views::Posts::Show.new\(post: @post\)/, content)

      # New
      assert_match(/render Views::Posts::New.new\(post: @post\)/, content)

      # Edit
      assert_match(/render Views::Posts::Edit.new\(post: @post\)/, content)

      # Create error
      assert_match(/render Views::Posts::New.new\(post: @post\), status: :unprocessable_entity/, content)

      # Update error
      assert_match(/render Views::Posts::Edit.new\(post: @post\), status: :unprocessable_entity/, content)
    end
  end
end

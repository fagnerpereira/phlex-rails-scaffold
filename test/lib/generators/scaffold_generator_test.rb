require "test_helper"

class ScaffoldGeneratorTest < PhlexGeneratorTestCase
  tests Phlex::Generators::ScaffoldGenerator
  arguments %w(Post title:string content:text)

  def setup
    copy_routes
    super
  end

  def test_scaffold_generates_phlex_views
    run_generator

    assert_file "app/views/posts/index.html.rb" do |content|
      assert_match(/class Views::Posts::Index < Phlex::HTML/, content)
      assert_match(/h1 { "Posts" }/, content)
      assert_match(/link_to "New Post", new_post_path/, content)
    end

    assert_file "app/views/posts/new.html.rb" do |content|
      assert_match(/class Views::Posts::New < Phlex::HTML/, content)
      assert_match(/render Views::Posts::Form.new(post: @post)/, content)
    end

    assert_file "app/views/posts/edit.html.rb" do |content|
      assert_match(/class Views::Posts::Edit < Phlex::HTML/, content)
      assert_match(/render Views::Posts::Form.new(post: @post)/, content)
    end

    assert_file "app/views/posts/show.html.rb" do |content|
      assert_match(/class Views::Posts::Show < Phlex::HTML/, content)
      assert_match(/strong { "Title:" }/, content)
      assert_match(/strong { "Content:" }/, content)
    end

    assert_file "app/views/posts/_form.html.rb" do |content|
      assert_match(/class Views::Posts::Form < Phlex::HTML/, content)
      assert_match(/form.label :title/, content)
      assert_match(/form.text_field :title/, content)
      assert_match(/form.label :content/, content)
      assert_match(/form.text_area :content/, content)
      assert_match(/form.submit/, content)
    end
  end
end

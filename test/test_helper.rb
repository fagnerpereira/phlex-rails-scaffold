require "rails/generators/test_case"
require "generators/phlex/scaffold/scaffold_generator"

class PhlexGeneratorTestCase < Rails::Generators::TestCase
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  def copy_routes
    routes = File.expand_path("../../fixtures/routes.rb", __FILE__)
    destination = File.join(destination_root, "config")
    FileUtils.mkdir_p(destination)
    FileUtils.cp routes, destination
  end
end

require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Phlex
  module Generators
    class ScaffoldControllerGenerator < Rails::Generators::ScaffoldControllerGenerator
      source_root File.expand_path('templates', __dir__)

      def create_controller_files
        template "controller.rb", File.join('app/controllers', controller_class_path, "#{controller_file_name}_controller.rb")
      end

      private

      def view_module_name
        (controller_class_path + [plural_table_name]).map(&:camelize).join("::")
      end
    end
  end
end

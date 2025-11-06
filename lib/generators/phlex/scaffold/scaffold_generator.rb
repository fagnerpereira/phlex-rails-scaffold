
require 'rails/generators/erb/scaffold/scaffold_generator'

module Phlex
  module Generators
    class ScaffoldGenerator < Erb::Generators::ScaffoldGenerator
      source_root File.expand_path(File.join('..', 'templates'), __FILE__)

      def copy_view_files
        available_views.each do |view|
          filename = view + ".html.rb"
          template filename + ".tt", File.join("app", "views", controller_file_path, filename)
        end

        template "_form.html.rb.tt", File.join("app", "views", controller_file_path, "_form.html.rb")
      end

      hook_for :form_builder, as: :scaffold

      protected

      def available_views
        %w(index edit show new)
      end

      def handler
        :phlex
      end
    end
  end
end

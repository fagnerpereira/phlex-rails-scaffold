# frozen_string_literal: true

require_relative "scaffold/version"

module Phlex
  module Rails
    module Scaffold
      class Error < StandardError; end
      Rails::Generators.options[:rails][:template_engine] = :phlex
      Rails::Generators.options[:rails][:scaffold_controller] = :phlex
    end
  end
end

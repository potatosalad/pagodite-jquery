require 'jquery-rails/../generators/jquery/install/install_generator'

module Pagodite
  module Jquery
    module Generators
      class InstallGenerator < ::Jquery::Generators::InstallGenerator
        class_option :path, :type => :string, :default => "public/javascripts", :desc => "The path to download jquery to"

        def remove_prototype
          %w(controls.js dragdrop.js effects.js prototype.js).each do |js|
            remove_file File.join(options[:path], js)
          end
        end
      end
    end
  end
end
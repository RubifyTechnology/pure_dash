require 'securerandom'
require 'rails/generators'
require 'rails/generators/migration'

module PureDash
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates a Config file and copy locale files to your application."
      class_option :orm

      def copy_initializer
        template "config/chart_color.yml", "config/chart_color.yml"
      end
      
      def copy_locales
        copy_file "../../../config/locales/devise.en.yml", "config/locales/devise.en.yml"
      end
      
      def copy_migration
        migration_template "migrations/devise_create_users.rb", "db/migrate/devise_create_users.rb"
        copy_file 'seeds/seeds.rb', 'db/seeds.rb', force: true
      end
      
      def copy_model
        template 'models/user.rb', 'app/models/user.rb'
        rake("db:reload")
        rake("db:migrate")
      end
      
      def copy_controllers
        template 'controllers/pure_dash_controller.rb', 'app/controllers/pure_dash_controller.rb'
        template 'controllers/application_controller.rb', 'app/controllers/application_controller.rb', force: true
      end
      
      def copy_views
        # copy_file 'views/dashboard/index.html.erb', 'app/views/dashboard/index.html.erb'
#         copy_file 'views/dashboard/home.html.erb', 'app/views/dashboard/home.html.erb'
#         copy_file 'views/layouts/maintenance.html.erb', 'app/views/layouts/maintenance.html.erb'
#         copy_file 'views/layouts/dashboard.html.erb', 'app/views/layouts/dashboard.html.erb'
      end
      
      def inject_javascript
        append_to_file 'app/assets/javascripts/application.js' do
          out = "\n"
          out << "//= require pure_dash/app"
        end
      end
      
      def remove_public_index_file
        remove_file 'public/index.html'
      end
      
      def inject_css
        append_to_file 'app/assets/stylesheets/application.css' do
          out = "\n"
          out << "/* *= require pure_dash/styles */"
        end
        
      end
      
      def add_routes
        route "root 'pure_dash#index'"
        route "get 'pure_dash#home'"
        # route "devise_for :users"
      end      
      
      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end

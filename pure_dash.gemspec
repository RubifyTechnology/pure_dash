# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: pure_dash 0.1.8 ruby lib

Gem::Specification.new do |s|
  s.name = "pure_dash"
  s.version = "0.1.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James"]
  s.date = "2014-09-08"
  s.description = "Pure Admin Dashboard"
  s.email = "james@rubify.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/.DS_Store",
    "app/assets/images/.DS_Store",
    "app/assets/images/pure_dash/.DS_Store",
    "app/assets/images/pure_dash/bg_add.png",
    "app/assets/images/pure_dash/close_popup.png",
    "app/assets/images/pure_dash/fancybox/blank.gif",
    "app/assets/images/pure_dash/fancybox/fancybox_buttons.png",
    "app/assets/images/pure_dash/fancybox/fancybox_loading.gif",
    "app/assets/images/pure_dash/fancybox/fancybox_loading@2x.gif",
    "app/assets/images/pure_dash/fancybox/fancybox_overlay.png",
    "app/assets/images/pure_dash/fancybox/fancybox_sprite.png",
    "app/assets/images/pure_dash/fancybox/fancybox_sprite@2x.png",
    "app/assets/images/pure_dash/glyphicons-white.png",
    "app/assets/images/pure_dash/glyphicons.png",
    "app/assets/javascripts/.DS_Store",
    "app/assets/javascripts/fancybox/jquery.fancybox-buttons.js",
    "app/assets/javascripts/fancybox/jquery.fancybox-media.js",
    "app/assets/javascripts/fancybox/jquery.fancybox-thumbs.js",
    "app/assets/javascripts/fancybox/jquery.fancybox.js",
    "app/assets/javascripts/fancybox/jquery.mousewheel-3.0.6.pack.js",
    "app/assets/javascripts/pickadate/legacy.js",
    "app/assets/javascripts/pickadate/picker.date.js",
    "app/assets/javascripts/pickadate/picker.js",
    "app/assets/javascripts/pure_dash/app.js",
    "app/assets/javascripts/pure_dash/barchart.js",
    "app/assets/javascripts/pure_dash/canvas2png.js",
    "app/assets/javascripts/pure_dash/chart.js",
    "app/assets/javascripts/pure_dash/dotdotdot.js",
    "app/assets/javascripts/pure_dash/excanvas.js",
    "app/assets/javascripts/pure_dash/flashcanvas.js",
    "app/assets/javascripts/pure_dash/flashcanvas.swf",
    "app/assets/javascripts/pure_dash/jquery-ui.js",
    "app/assets/javascripts/pure_dash/jquery.bpopup.js",
    "app/assets/javascripts/pure_dash/jquery.mCustomScrollbar.js",
    "app/assets/javascripts/pure_dash/jquery.mousewheel.js",
    "app/assets/javascripts/pure_dash/jquery.simplePagination.js",
    "app/assets/javascripts/pure_dash/modernizr.js",
    "app/assets/javascripts/pure_dash/nprogress.js",
    "app/assets/javascripts/pure_dash/placeholder.js",
    "app/assets/javascripts/pure_dash/responsive-tables.js",
    "app/assets/javascripts/pure_dash/show.errors.js",
    "app/assets/javascripts/pure_dash/strength.js",
    "app/assets/stylesheets/fancybox/jquery.fancybox-buttons.css",
    "app/assets/stylesheets/fancybox/jquery.fancybox-thumbs.css",
    "app/assets/stylesheets/fancybox/jquery.fancybox.css",
    "app/assets/stylesheets/pickadate/default.css",
    "app/assets/stylesheets/pickadate/default.date.css",
    "app/assets/stylesheets/pickadate/rtl.css",
    "app/assets/stylesheets/pure_dash/.DS_Store",
    "app/assets/stylesheets/pure_dash/chart.scss",
    "app/assets/stylesheets/pure_dash/float_label.css",
    "app/assets/stylesheets/pure_dash/fonts/glyphicons-halflings-regular.eot",
    "app/assets/stylesheets/pure_dash/fonts/glyphicons-halflings-regular.svg",
    "app/assets/stylesheets/pure_dash/fonts/glyphicons-halflings-regular.ttf",
    "app/assets/stylesheets/pure_dash/fonts/glyphicons-halflings-regular.woff",
    "app/assets/stylesheets/pure_dash/glyphicons.css.scss",
    "app/assets/stylesheets/pure_dash/jquery.mCustomScrollbar.css",
    "app/assets/stylesheets/pure_dash/nprogress.css",
    "app/assets/stylesheets/pure_dash/on_off_switch.css",
    "app/assets/stylesheets/pure_dash/popup.scss",
    "app/assets/stylesheets/pure_dash/pure.css",
    "app/assets/stylesheets/pure_dash/responsive-tables.css",
    "app/assets/stylesheets/pure_dash/styles.scss",
    "app/helpers/pure_dash/banner_helper.rb",
    "app/helpers/pure_dash/chart_helper.rb",
    "app/helpers/pure_dash/input_elements_helper.rb",
    "app/helpers/pure_dash/main_menu_helper.rb",
    "app/helpers/pure_dash/popup_helper.rb",
    "app/views/.DS_Store",
    "app/views/devise/mailer/reset_password_instructions.html.erb",
    "app/views/devise/passwords/edit.html.erb",
    "app/views/devise/passwords/new.html.erb",
    "app/views/devise/registrations/new.html.erb",
    "app/views/devise/sessions/new.html.erb",
    "app/views/devise/shared/_links.erb",
    "config/initializers/_load_config.rb",
    "config/initializers/devise.rb",
    "config/locales/devise.en.yml",
    "lib/generators/pure_dash/install_generator.rb",
    "lib/generators/templates/config/chart_color.yml",
    "lib/generators/templates/controllers/application_controller.rb",
    "lib/generators/templates/controllers/pure_dash_controller.rb",
    "lib/generators/templates/migrations/devise_create_users.rb",
    "lib/generators/templates/models/user.rb",
    "lib/generators/templates/seeds/seeds.rb",
    "lib/pure_dash.rb",
    "lib/pure_dash/active_record_extension.rb",
    "lib/pure_dash/devise_resource_extension.rb",
    "lib/pure_dash/engine.rb",
    "pure_dash.gemspec",
    "spec/helpers/banner_helper_spec.rb",
    "spec/helpers/main_menu_helper_spec.rb",
    "spec/rails_helper.rb",
    "spec/spec_helper.rb",
    "spec/support/deferred_garbage_collection.rb"
  ]
  s.homepage = "http://github.com/jameshuynh/pure_dash"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Pure Admin Dashboard"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 4.1.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 4.1.0"])
      s.add_runtime_dependency(%q<devise>, ["~> 3.2.4"])
      s.add_runtime_dependency(%q<formnestic>, ["~> 1.0.2"])
      s.add_runtime_dependency(%q<smart_listing>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.0.0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<spork>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 4.1.0"])
      s.add_dependency(%q<actionpack>, [">= 4.1.0"])
      s.add_dependency(%q<devise>, ["~> 3.2.4"])
      s.add_dependency(%q<formnestic>, ["~> 1.0.2"])
      s.add_dependency(%q<smart_listing>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.0.0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<spork>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 4.1.0"])
    s.add_dependency(%q<actionpack>, [">= 4.1.0"])
    s.add_dependency(%q<devise>, ["~> 3.2.4"])
    s.add_dependency(%q<formnestic>, ["~> 1.0.2"])
    s.add_dependency(%q<smart_listing>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.0.0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<spork>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
  end
end


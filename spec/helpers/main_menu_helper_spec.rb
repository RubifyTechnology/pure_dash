# encoding: utf-8
require 'rails_helper'
require File.join(File.dirname(__FILE__), '../../app/helpers/pure_dash', 'main_menu_helper')
require 'action_view'

include ActionView::Helpers::TagHelper
include PureDash::MainMenuHelper
describe 'MainMenuHelper' do
  mock_everything
  it 'yields a div with company logo' do
    main_menu_content = pure_dash_main_menu([
      {
        label: "Dashboard",
        url: "/dashboard"
      },
      {
        label: "Directory",
        url: "/directory"
      }
    ])
    
    expect(main_menu_content).to eq("<div class=\"pure-dash-main-menu-container pure-menu pure-menu-open pure-menu-horizontal\"><ul class=\"pure-dash-main-menu\"><li><a href=\"/dashboard\">Dashboard</a></li><li><a href=\"/directory\">Directory</a></li></ul></div>")
  end
end

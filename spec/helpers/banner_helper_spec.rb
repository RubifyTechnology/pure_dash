# encoding: utf-8
require 'rails_helper'
require File.join(File.dirname(__FILE__), '../../app/helpers/pure_dash', 'banner_helper')
require 'action_view'

include ActionView::Helpers::TagHelper
include ActionView::Helpers::UrlHelper
include PureDash::BannerHelper
describe 'BannerHelper' do
  mock_everything
  it 'yields a div with company logo' do
    banner_content = pure_dash_banner({
      company_logo: "/assets/sample_logo.png",
      slogan: "helping company grows",
      rhs_buttons: [{
        label: "Logout",
        url: "/users/sign_out",
        class: "pure-button pure-button-primary"
      }]
    })
    
    expect(banner_content).to eq("<div class=\"pure-dash-banner\"><div class=\"home-menu pure-menu pure-menu-open pure-menu-horizontal\"><a class=\"pure-menu-heading\" href=\"/\"><div class=\"company-logo\"><img src=\"/assets/sample_logo.png\" /></div><div class=\"company-slogan\">helping company grows</div></a><ul class=\"rhs-buttons\"><li><a href=\"/users/sign_out\" class=\"rhs-button pure-button pure-button-primary\">Logout</a></li></ul></div></div>")
  end
end

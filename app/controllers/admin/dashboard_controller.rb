class Admin::DashboardController < ApplicationController
  layout 'dashboard'
  http_basic_authenticate_with :name => "Nancy", :password => "englishPups.101"
end

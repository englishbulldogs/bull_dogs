class AdminController < ApplicationController
	http_basic_authenticate_with :name => "username", :password => "pass"
end
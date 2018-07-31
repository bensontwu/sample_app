require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	describe "GET signup" do
		it "responds successfully" do
			get :new
			expect(response).to have_http_status(200)
		end
		it "routes to the #new action" do
			expect(get: signup_path).to route_to(controller: "users", action: "new")
		end
		it "renders the /new template" do
			get :new
			expect(response).to render_template("users/new")
		end
	end
end

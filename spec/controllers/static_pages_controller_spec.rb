require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
	describe "GET home" do
		it "responds successfully" do
			get :home
			expect(response).to have_http_status(200)
		end
		it "renders the /home template" do
			get :home
			expect(response).to render_template("static_pages/home")
		end
	end

	describe "GET root_url" do
		it "routes to the #home action" do
			expect(get: root_url).to route_to(controller: "static_pages", action: "home")
		end
	end

	describe "GET help" do
		it "responds successfully" do
			get :help
			expect(response).to have_http_status(200)
		end
		it "renders the /help template" do
			get :help
			expect(response).to render_template("static_pages/help")
		end
	end

	describe "GET about" do 
		it "responds successfully" do
			get :about
			expect(response).to have_http_status(200)
		end
		it "renders the /about template" do
			get :about
			expect(response).to render_template("static_pages/about")
		end
	end

	describe "GET contact" do 
		it "responds successfully" do
			get :contact 
			expect(response).to have_http_status(200)
		end
		it "renders the /contact template" do
			get :contact
			expect(response).to render_template("static_pages/contact")
		end
	end
end






require "rails_helper"

RSpec.describe SubdirectoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/subdirectories").to route_to("subdirectories#index")
    end

    it "routes to #new" do
      expect(get: "/subdirectories/new").to route_to("subdirectories#new")
    end

    it "routes to #show" do
      expect(get: "/subdirectories/1").to route_to("subdirectories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/subdirectories/1/edit").to route_to("subdirectories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/subdirectories").to route_to("subdirectories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/subdirectories/1").to route_to("subdirectories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/subdirectories/1").to route_to("subdirectories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/subdirectories/1").to route_to("subdirectories#destroy", id: "1")
    end
  end
end

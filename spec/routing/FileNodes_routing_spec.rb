require "rails_helper"

RSpec.describe FilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/Files").to route_to("file_nodes#index")
    end

    it "routes to #new" do
      expect(get: "/Files/new").to route_to("file_nodes#new")
    end

    it "routes to #show" do
      expect(get: "/Files/1").to route_to("file_nodes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/Files/1/edit").to route_to("file_nodes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/Files").to route_to("file_nodes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/Files/1").to route_to("file_nodes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/Files/1").to route_to("file_nodes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/Files/1").to route_to("file_nodes#destroy", id: "1")
    end
  end
end

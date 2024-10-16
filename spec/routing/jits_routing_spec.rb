require "rails_helper"

RSpec.describe JitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/jits").to route_to("jits#index")
    end

    it "routes to #new" do
      expect(get: "/jits/new").to route_to("jits#new")
    end

    it "routes to #show" do
      expect(get: "/jits/1").to route_to("jits#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/jits/1/edit").to route_to("jits#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/jits").to route_to("jits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/jits/1").to route_to("jits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/jits/1").to route_to("jits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/jits/1").to route_to("jits#destroy", id: "1")
    end
  end
end

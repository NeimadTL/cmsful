require "rails_helper"

RSpec.describe UserAttributesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_attributes").to route_to("user_attributes#index")
    end

    it "routes to #show" do
      expect(get: "/user_attributes/1").to route_to("user_attributes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_attributes").to route_to("user_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_attributes/1").to route_to("user_attributes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_attributes/1").to route_to("user_attributes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_attributes/1").to route_to("user_attributes#destroy", id: "1")
    end
  end
end

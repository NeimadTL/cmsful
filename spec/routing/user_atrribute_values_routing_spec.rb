require "rails_helper"

RSpec.describe UserAtrributeValuesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_atrribute_values").to route_to("user_atrribute_values#index")
    end

    it "routes to #show" do
      expect(get: "/user_atrribute_values/1").to route_to("user_atrribute_values#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_atrribute_values").to route_to("user_atrribute_values#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_atrribute_values/1").to route_to("user_atrribute_values#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_atrribute_values/1").to route_to("user_atrribute_values#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_atrribute_values/1").to route_to("user_atrribute_values#destroy", id: "1")
    end
  end
end

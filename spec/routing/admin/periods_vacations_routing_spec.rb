require "rails_helper"

RSpec.describe Admin::PeriodsVacationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/periods_vacations").to route_to("admin/periods_vacations#index")
    end

    it "routes to #new" do
      expect(get: "/admin/periods_vacations/new").to route_to("admin/periods_vacations#new")
    end

    it "routes to #show" do
      expect(get: "/admin/periods_vacations/1").to route_to("admin/periods_vacations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin/periods_vacations/1/edit").to route_to("admin/periods_vacations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin/periods_vacations").to route_to("admin/periods_vacations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin/periods_vacations/1").to route_to("admin/periods_vacations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin/periods_vacations/1").to route_to("admin/periods_vacations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin/periods_vacations/1").to route_to("admin/periods_vacations#destroy", id: "1")
    end
  end
end

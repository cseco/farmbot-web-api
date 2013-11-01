require "spec_helper"

describe Api::V1::UsersController do
  describe "routing" do

    it "routes to #index" do
      get("/api/v1/users").should route_to(
        format:     "json",
        action:     "index",
        controller: "api/v1/users"
        )
    end

    it "routes to #show" do
      get("/api/v1/users/123").should route_to(
        format:     "json",
        action:     "show",
        controller: "api/v1/users",
        id:         "123"
        )
    end

    it "routes to #create" do
      post("/api/v1/users").should route_to(
        format:     "json",
        action:     "create",
        controller: "api/v1/users"
        )
    end

    it "routes to #update" do
      put("/api/v1/users/123").should route_to(
        format:     "json",
        action:     "update",
        controller: "api/v1/users",
        id:          "123"
        )
    end

    it "routes to #destroy" do
      delete("/api/v1/users/123").should route_to(
        format:     "json",
        action:     "destroy",
        controller: "api/v1/users",
        id:         "123"
        )
    end

  end
end

require 'rails_helper'

describe "Routes" do
  describe "ApplicationInitiatorsController" , :type => :routing do
    before do
      @controller_name = 'api/v0/application_initiators'
    end

    it "routes get index" do
      expect(:get => "api/v0/application_initiators").to route_to(
                                                             :controller => @controller_name,
                                                             :action => "index"
                                                         )
    end
  end
end
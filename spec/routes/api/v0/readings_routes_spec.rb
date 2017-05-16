require 'rails_helper'

describe "Routes" do
  describe "ReadingsController" , :type => :routing do
    before do
      @controller_name = 'api/v0/readings'
    end

    it "routes get show" do
      expect(:get => 'api/v0/readings/1').to route_to(
                                              :controller => @controller_name,
                                              :action => "show",
                                              :id => "1"
                                          )
    end
  end
end
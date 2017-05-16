require 'rails_helper'

describe "Routes" do
  describe "ExamsController" , :type => :routing do
    before do
      @controller_name = 'api/v0/exams'
    end

    it "routes get index" do
      expect(:get => "api/v0/exams").to route_to(
                                     :controller => @controller_name,
                                     :action => "index"
                                 )
    end


    it "routes post create" do
      expect(:post => "api/v0/exams").to route_to(
                                      :controller => @controller_name,
                                      :action => "create"
                                  )
    end


    it "routes put update" do
      expect(:put => "api/v0/exams/1").to route_to(
                                       :controller => @controller_name,
                                       :action => "update",
                                       :id => '1'
                                   )
    end


  end
end
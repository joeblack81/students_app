require 'rails_helper'

describe "Routes" do
  describe "QuestionsController" , :type => :routing do
    before do
      @controller_name = 'api/v1/questions'
    end

    it "routes get index" do
      expect(:get => @controller_name).to route_to(
                                            :controller => @controller_name,
                                            :action => "index"
                                        )
    end
  end
end
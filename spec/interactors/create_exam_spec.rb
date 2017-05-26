require 'rails_helper'
describe CreateExam do

  it "call should create exam" do
    @interactor = CreateExam.call(response: {}, params: attributes_for(:exam).merge(student_id: create(:student).id))
    expect(@interactor).to be_a_success
  end




end
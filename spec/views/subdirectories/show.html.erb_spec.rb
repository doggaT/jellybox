require 'rails_helper'

RSpec.describe "subdirectories/show", type: :view do
  before(:each) do
    assign(:subdirectory, Subdirectory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

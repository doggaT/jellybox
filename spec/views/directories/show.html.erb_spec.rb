require 'rails_helper'

RSpec.describe "directories/show", type: :view do
  before(:each) do
    assign(:directory, Directory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

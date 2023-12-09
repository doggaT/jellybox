require 'rails_helper'

RSpec.describe "subdirectories/new", type: :view do
  before(:each) do
    assign(:subdirectory, Subdirectory.new())
  end

  it "renders new subdirectory form" do
    render

    assert_select "form[action=?][method=?]", subdirectories_path, "post" do
    end
  end
end

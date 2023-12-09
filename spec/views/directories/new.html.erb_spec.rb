require 'rails_helper'

RSpec.describe "directories/new", type: :view do
  before(:each) do
    assign(:directory, Directory.new())
  end

  it "renders new directory form" do
    render

    assert_select "form[action=?][method=?]", directories_path, "post" do
    end
  end
end

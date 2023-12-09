require 'rails_helper'

RSpec.describe "directories/edit", type: :view do
  let(:directory) {
    Directory.create!
  }

  before(:each) do
    assign(:directory, directory)
  end

  it "renders the edit directory form" do
    render

    assert_select "form[action=?][method=?]", directory_path(directory), "post" do
    end
  end
end

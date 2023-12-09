require 'rails_helper'

RSpec.describe "subdirectories/edit", type: :view do
  let(:subdirectory) {
    Subdirectory.create!()
  }

  before(:each) do
    assign(:subdirectory, subdirectory)
  end

  it "renders the edit subdirectory form" do
    render

    assert_select "form[action=?][method=?]", subdirectory_path(subdirectory), "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "Files/edit", type: :view do
  let(:file_node) {
    FileNode.create!()
  }

  before(:each) do
    assign(:file_node, file_node)
  end

  it "renders the edit file form" do
    render

    assert_select "form[action=?][method=?]", file_node_path(file_node), "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "Files/new", type: :view do
  before(:each) do
    assign(:file_node, FileNode.new())
  end

  it "renders new file form" do
    render

    assert_select "form[action=?][method=?]", file_nodes_path, "post" do
    end
  end
end

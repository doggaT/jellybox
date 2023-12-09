require 'rails_helper'

RSpec.describe "Files/show", type: :view do
  before(:each) do
    assign(:file_node, FileNode.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

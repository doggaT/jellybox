require 'rails_helper'

RSpec.describe "Files/index", type: :view do
  before(:each) do
    assign(:file_nodes, [
      FileNode.create!(),
      FileNode.create!()
    ])
  end

  it "renders a list of Files" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end

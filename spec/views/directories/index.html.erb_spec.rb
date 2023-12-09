require 'rails_helper'

RSpec.describe "directories/index", type: :view do
  before(:each) do
    assign(:directories, [
      Directory.create!(),
      Directory.create!()
    ])
  end

  it "renders a list of directories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end

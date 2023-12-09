require 'rails_helper'

RSpec.describe "subdirectories/index", type: :view do
  before(:each) do
    assign(:subdirectories, [
      Subdirectory.create!(),
      Subdirectory.create!()
    ])
  end

  it "renders a list of subdirectories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end

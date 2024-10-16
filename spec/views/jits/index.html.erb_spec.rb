require 'rails_helper'

RSpec.describe "jits/index", type: :view do
  before(:each) do
    assign(:jits, [
      Jit.create!(
        content: "Content",
        likes: 2
      ),
      Jit.create!(
        content: "Content",
        likes: 2
      )
    ])
  end

  it "renders a list of jits" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
